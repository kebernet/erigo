/*
 *     Copyright (c) 2017 Robert Cooper
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */
package net.kebernet.configuration.client.impl;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Charsets;
import com.google.common.base.Objects;
import com.google.common.util.concurrent.SettableFuture;
import com.google.gson.Gson;
import gnu.io.CommPort;
import gnu.io.CommPortIdentifier;
import gnu.io.PortInUseException;
import gnu.io.SerialPort;
import gnu.io.UnsupportedCommOperationException;
import net.kebernet.configuration.client.model.Device;
import net.kebernet.configuration.client.service.Devices;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

/**
 * Created by rcooper on 7/5/17.
 */
@GwtIncompatible
public class SerialPortDevices implements Devices {
    private static final ExecutorService DEFAULT_EXECUTOR = Executors.newWorkStealingPool();
    private static final Logger LOGGER = Logger.getLogger(SerialPortDevices.class.getCanonicalName());
    private static final int COMM_PORT_TIMEOUT = 2000;
    private static final long PROTOCOL_TIMEOUT = 5000;
    private static final long READ_WRITE_TIMEOUT = 2000;
    private HashMap<String, Device> devices = new HashMap<>();
    private final CopyOnWriteArrayList<DeviceListCallback> listeners = new CopyOnWriteArrayList<>();
    private ErrorCallback errorCallback;

    public SerialPortDevices(){
    }

    @Override
    public synchronized void refresh(){
        Enumeration<CommPortIdentifier> portEnum = CommPortIdentifier.getPortIdentifiers();
        ArrayList<CommPortIdentifier> serialPorts = new ArrayList<>();
        while(portEnum.hasMoreElements()){
            CommPortIdentifier cpi = portEnum.nextElement();
            if(cpi.getPortType() == CommPortIdentifier.PORT_SERIAL){
                serialPorts.add(cpi);
            }
        }
        List<Device> deviceList = serialPorts.parallelStream()
                .map(SerialProtocolHandler::new)
                .map(SerialProtocolHandler::query)
                .filter(Optional::isPresent)
                .map(Optional::get)
                .collect(Collectors.toList());
        LOGGER.info("Got local device list");
        deviceList.forEach(d->devices.put(d.getName(), d));
        LOGGER.info("Notify: "+deviceList);
        notifyDevices(deviceList);
    }

    private void notifyDevices(List<Device> deviceList) {
        this.listeners.parallelStream()
                .forEach(l->{
                    if(!l.onDevices(deviceList)){
                        this.listeners.remove(l);
                    }
                });
    }


    @Override
    public void listenForDevices(@Nonnull DeviceListCallback callback) {
        this.listeners.add(callback);
    }

    @Override
    public void listKnownDevices(@Nonnull DeviceListCallback callback) {
        DEFAULT_EXECUTOR.submit(()->{
            callback.onDevices(new ArrayList<>(devices.values()));
        });
    }

    @Override
    public void setErrorCallback(@Nullable ErrorCallback callback) {
        this.errorCallback = callback;
    }

    private static void swallowException(Object o, Callable c) {
        if(o != null){
            try {
                c.call();
            } catch (Exception e) {
                LOGGER.log(Level.WARNING, null, e);
            }
            LOGGER.info("Done with "+o.getClass().getCanonicalName());
        } else {
            return;
        }

    }

    private void maybeSendError(String error){
        if(this.errorCallback != null){
            this.errorCallback.onError(error);
        }
    }

    class SerialProtocolHandler {
        private static final String PROTOCOL_PREFIX = "iot-cfg#";
        private final CommPortIdentifier identifier;
        private BufferedReader in;
        private PrintWriter out;
        private SettableFuture<Device> discoveredDevice = SettableFuture.create();
        private CommPort commPort;
        private ProtocolState state = ProtocolState.WAIT_HELLO;

        SerialProtocolHandler(CommPortIdentifier identifier) {
            this.identifier = identifier;
        }

        @Nonnull
        Optional<Device> query() {
            Device discovered = null;
            try {
                this.commPort = identifier.open(SerialProtocolHandler.class.getSimpleName(), COMM_PORT_TIMEOUT);
                SerialPort serialPort = (SerialPort) commPort;
                serialPort.setSerialPortParams(57600,SerialPort.DATABITS_8,SerialPort.STOPBITS_1,SerialPort.PARITY_NONE);
                this.in = new BufferedReader(new InputStreamReader(commPort.getInputStream(),Charsets.US_ASCII));
                this.out = new PrintWriter(new OutputStreamWriter(commPort.getOutputStream(), Charsets.US_ASCII));
                send("Hello");
                doNext();
            } catch (PortInUseException e) {
                LOGGER.warning("Skipping "+identifier.getName()+" because port is in use");
            } catch (UnsupportedCommOperationException e) {
                LOGGER.log(Level.SEVERE, "Failed to set serial port params", e);
            } catch (IOException e) {
                LOGGER.log(Level.WARNING, "IOException taking to "+identifier.getName(), e);
            } finally {
                swallowException(this.in, ()->{this.in.close(); return null;});
                swallowException(this.out, ()->{this.out.close(); return null;});
            }
            try {
                discovered = discoveredDevice.get(PROTOCOL_TIMEOUT, TimeUnit.MILLISECONDS);
            } catch (InterruptedException |ExecutionException | TimeoutException e) {
                LOGGER.log(Level.FINE, "Couldn't get discovered device for "+commPort.getName());
            }
            if(discovered != null) {
                discovered.setAddress("serial://" + this.commPort.getName());
            }
            LOGGER.info("DISCOVERED "+discovered);
            return Optional.ofNullable(discovered);
        }

        private void doNext(){
            DEFAULT_EXECUTOR.submit(this::doProtocol);
        }

        private void doProtocol(){
            String token = null;
            switch(state){
                case WAIT_HELLO:
                    token = readToken();
                    if(Objects.equal(token, "Hello v1")) {
                        send("device");
                        state = ProtocolState.WAIT_SETTINGS;
                    }  else if(token != null){
                        state = ProtocolState.ERROR;
                        maybeSendError("Unexpected token from device: "+token);
                    }
                    doNext();
                    break;
                case WAIT_SETTINGS:
                    token = readToken();
                    if(parseDevice(token)){
                        state = ProtocolState.DONE;
                    }
                    doNext();
                    break;
                case DONE:
                case ERROR:
                    finish();

            }
        }

        private void finish(){
            LOGGER.info("Finish for "+this.commPort.getName());
            if(!this.discoveredDevice.isDone()){
                this.discoveredDevice.set(null);
            }
        }

        private void send(@Nonnull String token){
            out.println(PROTOCOL_PREFIX+token);
            out.flush();
        }

        private boolean parseDevice(@Nonnull String token) {
            try {
                discoveredDevice.set(new Gson().fromJson(token, Device.class));
                return true;
            } catch(Exception e){
                LOGGER.log(Level.WARNING, "Failed to parse token "+token, e);
                return false;
            }
        }

        private String readToken() {
            long incept = System.currentTimeMillis();
            try {
                String line;
                while((line = in.readLine()) != null && (System.currentTimeMillis() - incept) <= READ_WRITE_TIMEOUT) {
                    if (line.startsWith(PROTOCOL_PREFIX)) {
                        return line.substring(PROTOCOL_PREFIX.length());
                    } else {
                        LOGGER.info("Unknown message:"+line);
                    }
                }
            } catch (IOException e) {
                String error = "Failed to read from "+commPort.getName();
                maybeSendError(error);
                LOGGER.log(Level.WARNING, error, e);
                state = ProtocolState.ERROR;
            }
            return null;
        }
    }



    enum ProtocolState {
        WAIT_HELLO, WAIT_SETTINGS, DONE, ERROR,
    }
}
