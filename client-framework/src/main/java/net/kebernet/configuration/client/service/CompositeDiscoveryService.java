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
package net.kebernet.configuration.client.service;

import net.kebernet.configuration.client.model.Device;

import javax.annotation.Nonnull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/4/17.
 */
public class CompositeDiscoveryService implements DiscoveryService {
    private static final Logger LOGGER = Logger.getLogger(CompositeDiscoveryService.class.getCanonicalName());
    private static final ExecutorService defaultExecutor = Executors.newWorkStealingPool();
    private final DiscoveryService[] internal;
    private final CopyOnWriteArrayList<DeviceListCallback> listeners = new CopyOnWriteArrayList<>();

    public CompositeDiscoveryService(@Nonnull DiscoveryService... internal) {
        this.internal = internal;
        for(DiscoveryService devices : internal){
            devices.listenForDevices(result -> {
                for(DeviceListCallback callback : listeners){
                    if(!callback.onDevices(result)){
                        listeners.remove(callback);
                    }
                }
                return true;
            });
        }
    }


    @Override
    public void listenForDevices(DeviceListCallback callback) {
        listeners.add(callback);
    }

    @SuppressWarnings("unchecked")
    @Override
    public void listKnownDevices(DeviceListCallback callback) {
        final List[] results = new List[internal.length];
        for(int i = 0; i < internal.length; i++){
            final int index = i;
            internal[i].listKnownDevices(result -> {
                results[index] = result;
                for (List check : results) {
                    if (check == null) {
                        return false;
                    }
                }
                ArrayList<Device> total = new ArrayList<>();
                for(List l : results){
                    total.addAll((List<Device>) l);
                }
                callback.onDevices(total);
                return false;
            });
        }
    }

    @Override
    public void setErrorCallback(ErrorCallback callback) {
        for(DiscoveryService d: internal){
            d.setErrorCallback(callback);
        }
    }

    @Override
    public void refresh() {
        defaultExecutor.submit(()->{
            Arrays.stream(internal)
                    .forEach(d ->{
                        LOGGER.info("Starting refresh on "+d.getClass().getCanonicalName());
                        try {
                            d.refresh();
                        } catch(Exception e){
                            LOGGER.log(Level.WARNING, null, e);
                        }
                    });
        });
        LOGGER.info("Refresh started.");
    }
}
