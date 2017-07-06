package net.kebernet.configuration.client.model;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.j2objc.annotations.ReflectionSupport;
import net.kebernet.configuration.client.util.URIUtil;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/3/17.
 */
@ReflectionSupport(ReflectionSupport.Level.FULL)
public class Device {
    private static final Logger LOGGER = Logger.getLogger(Device.class.getCanonicalName());
    private transient String address;
    private String name;
    private String type;
    private String manufacturer;
    private String thumbnailUrl;
    private String settingsUrl;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getThumbnailUrl() {
        return URIUtil.resolveRelativeURI(this.getAddress(), this.thumbnailUrl);
    }

    public void setThumbnailUrl(String thumbnailUrl) {
        this.thumbnailUrl = thumbnailUrl;
    }

    public String getSettingsUrl() {
        return URIUtil.resolveRelativeURI(this.getAddress(), this.settingsUrl);
    }

    public void setSettingsUrl(String settingsUrl) {
        this.settingsUrl = settingsUrl;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("address", address)
                .add("name", name)
                .add("type", type)
                .add("manufacturer", manufacturer)
                .add("thumbnailUrl", getThumbnailUrl())
                .add("settingsUrl", getSettingsUrl())
                .toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Device)) return false;
        Device device = (Device) o;
        return Objects.equal(address, device.address) &&
                Objects.equal(name, device.name) &&
                Objects.equal(type, device.type) &&
                Objects.equal(manufacturer, device.manufacturer) &&
                Objects.equal(thumbnailUrl, device.thumbnailUrl) &&
                Objects.equal(settingsUrl, device.settingsUrl);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(address, name, type, manufacturer, thumbnailUrl, settingsUrl);
    }
}
