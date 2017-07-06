package net.kebernet.configuration.client.service;

import net.kebernet.configuration.client.model.Device;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/4/17.
 */
public class CompositeDevices implements Devices {
    private static final Logger LOGGER = Logger.getLogger(CompositeDevices.class.getCanonicalName());
    private final Devices[] internal;
    private final CopyOnWriteArrayList<DeviceListCallback> listeners = new CopyOnWriteArrayList<>();

    public CompositeDevices(Devices... internal) {
        this.internal = internal;
        for(Devices devices : internal){
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
                    total.addAll(l);
                }
                callback.onDevices(total);
                return false;
            });
        }
    }

    @Override
    public void setErrorCallback(ErrorCallback callback) {
        for(Devices d: internal){
            d.setErrorCallback(callback);
        }
    }

    @Override
    public void refresh() {
        for(Devices d: internal){
            LOGGER.info("Starting refresh on "+d.getClass().getCanonicalName());
            d.refresh();
        }
        LOGGER.info("Refresh done.");
    }
}
