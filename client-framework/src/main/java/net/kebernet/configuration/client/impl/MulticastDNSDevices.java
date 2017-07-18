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
import com.google.common.base.Objects;
import com.google.common.io.CharStreams;
import com.google.gson.Gson;
import net.kebernet.configuration.client.model.Device;
import net.kebernet.configuration.client.service.DiscoveryService;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.inject.Inject;
import javax.inject.Singleton;
import javax.jmdns.JmDNS;
import javax.jmdns.ServiceEvent;
import javax.jmdns.ServiceInfo;
import javax.jmdns.ServiceListener;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import java.util.logging.Logger;

import static com.google.common.base.Preconditions.checkNotNull;

/**
 * Created by rcooper on 7/4/17.
 */
@GwtIncompatible
@Singleton
public class MulticastDNSDevices implements DiscoveryService {
    public static final String MDNS_SERVICE_TYPE = "_v1._iotconfig._tcp.local.";
    private static final Logger LOGGER = Logger.getLogger(MulticastDNSDevices.class.getCanonicalName());
    private static final ExecutorService DEFAULT_EXECUTOR = Executor.getInstance();
    private final CopyOnWriteArrayList<DeviceListCallback> listeningCallbacks = new CopyOnWriteArrayList<>();
    private Timer timer;
    private JmDNS jmdns;
    private InetAddress localhost;
    private ErrorCallback callback;
    private final LinkedHashMap<String, Device> devices = new LinkedHashMap<>();
    private CopyOnWriteArrayList<Device> queuedForDispatch = new CopyOnWriteArrayList<>();
    private ErrorCallback errorCallback;
    private ServiceListener serviceListener;
    private final HttpClient httpClient;

    @Inject
    public MulticastDNSDevices(HttpClient httpClient){
        this.httpClient = httpClient;
    }

    @Override
    public void listenForDevices(@Nonnull DeviceListCallback callback) {
        checkNotNull(callback, "Cannot use a null callback.");
        this.listeningCallbacks.add(callback);
    }

    @Override
    public void listKnownDevices(@Nonnull DeviceListCallback callback) {
        checkNotNull(callback, "Cannot use a null callback.");
        DEFAULT_EXECUTOR.submit(()->dispatchKnownDevices(callback));
    }

    private void dispatchKnownDevices(@Nonnull DeviceListCallback callback) {
        synchronized (devices) {
            callback.onDevices(new ArrayList<>(devices.values()));
        }
    }

    @Override
    public void setErrorCallback(@Nullable ErrorCallback callback) {
        this.errorCallback = callback;
    }

    @Override
    public void refresh() {
        stopListening();
        startListening();
    }


    private void maybeSendError(String error){
        if(this.errorCallback != null){
            this.errorCallback.onError(error);
        }
    }


    public void stopListening() {
        if(this.jmdns != null){
            this.jmdns.unregisterAllServices();
            this.jmdns.removeServiceListener(MDNS_SERVICE_TYPE, this.serviceListener);
        }
        if(this.timer != null) {
            timer.cancel();
        }
        LOGGER.info("Stop listening done.");
    }

    public void startListening() {
        try {
            localhost = InetAddress.getLocalHost();
            jmdns = JmDNS.create(localhost);
            jmdns.addServiceListener(MDNS_SERVICE_TYPE, this.serviceListener = new ServiceListener() {
                @Override
                public void serviceAdded(ServiceEvent event) {
                    LOGGER.info("Service added: "+event.getName() +" "+event.getInfo());
                    jmdns.requestServiceInfo(event.getType(), event.getName());
                }

                @Override
                public void serviceRemoved(ServiceEvent event) {
                    removeService(event.getName());
                }

                @Override
                public void serviceResolved(ServiceEvent event) {
                    LOGGER.info("Service service resovled: "+event.getName());
                    queryDeviceInfo(event.getInfo());
                }
            });
        } catch (IOException ioe) {
            LOGGER.log(Level.WARNING, null, ioe);
            maybeSendError("Error starting MDNS Listener "+ioe.getMessage());
        }
        timer = new Timer();
        timer.scheduleAtFixedRate(new TimerTask() {
            @Override
            public void run() {
                try {
                    InetAddress currentHost = InetAddress.getLocalHost();
                    if(!Objects.equal(currentHost, localhost)){
                        LOGGER.info("Detected network change. Restarting MDNS.");
                        refresh();
                    }
                } catch (UnknownHostException e) {
                    LOGGER.log(Level.WARNING, "Failed to query local host address", e);
                }
            }
        }, 2000L, 2000L);
        LOGGER.info("Start listening done.");
    }

    private void queryDeviceInfo(final ServiceInfo info) {
        DEFAULT_EXECUTOR.submit(() -> {
            for (String url : info.getURLs()) {
                    LOGGER.info("Fetching "+url);
                    httpClient.getToStream(info.getName(), url, (inputStreamReader -> {
                        try {
                            String body = CharStreams.toString(inputStreamReader);
                            Device device = new Gson().fromJson(body, Device.class);
                            device.setName(info.getName());
                            device.setAddress(url);
                            saveService(info.getName(), device);
                        } catch (IOException e) {
                            String error = "Failed to get URL("+url+") for name("+info.getName()+")";
                            LOGGER.log(Level.WARNING, error, e);
                            maybeSendError(error);
                        }
                    }));
            }
        });
    }

    private void saveService(String name, Device device) {
        synchronized (devices){
            devices.put(name, device);
            enqueueForFire(device);
        }
    }

    private void enqueueForFire(Device device) {
        queuedForDispatch.add(device);
        DEFAULT_EXECUTOR.submit(this::dispatch);
    }

    private void dispatch(){
        ArrayList<Device> dispatch = new ArrayList<>();
        queuedForDispatch.stream()
                .forEach((d) ->{
                    dispatch.add(d);
                    queuedForDispatch.remove(d);
                });
        listeningCallbacks.parallelStream()
                .forEach((callback)->{
                    try{
                        if(!callback.onDevices(new ArrayList<>(dispatch))){
                            listeningCallbacks.remove(callback);
                        }
                    } catch (Exception e){
                        LOGGER.log(Level.SEVERE, "Failed to dispatch to listening callback", e);

                    }
                });
        addAllDevices(dispatch);
    }

    private void addAllDevices(ArrayList<Device> dispatch) {
        synchronized (devices) {
            dispatch.forEach(d -> devices.put(d.getName(), d));
        }
    }

    private void removeService(String name) {
        synchronized (devices) {
            devices.remove(name);
        }
    }
}
