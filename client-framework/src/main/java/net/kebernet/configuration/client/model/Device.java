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
package net.kebernet.configuration.client.model;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.j2objc.annotations.ReflectionSupport;
import io.swagger.annotations.ApiModelProperty;
import net.kebernet.configuration.client.util.URIUtil;

import javax.xml.bind.annotation.XmlTransient;
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
    private String settingsValuesUrl;
    private String webUiUrl;
    private String tlsCertificateUrl;

    @ApiModelProperty(hidden = true)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @ApiModelProperty(value = "The name of the device")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @ApiModelProperty(value = "The type of the device")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @ApiModelProperty(value = "The manufacturer of the device")
    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    @ApiModelProperty(value = "URL to a thumbnail/icon for the device. May be a relative path.")
    public String getThumbnailUrl() {
        return URIUtil.resolveRelativeURI(this.getAddress(), this.thumbnailUrl);
    }

    public void setThumbnailUrl(String thumbnailUrl) {
        this.thumbnailUrl = thumbnailUrl;
    }

    @ApiModelProperty(value = "URL to a thumbnail/icon for the device. May be a relative path.")
    public String getSettingsUrl() {
        return URIUtil.resolveRelativeURI(this.getAddress(), this.settingsUrl);
    }

    public void setSettingsUrl(String settingsUrl) {
        this.settingsUrl = settingsUrl;
    }

    @ApiModelProperty(value = "URL to a settings endpoint of the device. May be a relative path.")
    public String getSettingsValuesUrl() {
        return URIUtil.resolveRelativeURI(this.getAddress(), settingsValuesUrl);
    }

    public void setSettingsValuesUrl(String settingsValuesUrl) {
        this.settingsValuesUrl = settingsValuesUrl;
    }

    @ApiModelProperty(value = "Optional: If the device has a web ui for administration, URL here. May be a relative path.")
    public String getWebUiUrl() {
        return URIUtil.resolveRelativeURI(this.getAddress(), webUiUrl);
    }

    public void setWebUiUrl(String webUiUrl) {
        this.webUiUrl = webUiUrl;
    }

    @ApiModelProperty(value = "Optional: URL to the TLS certificate for the device.. May be a relative path.")
    public String getTlsCertificateUrl() {
        return tlsCertificateUrl;
    }

    public void setTlsCertificateUrl(String tlsCertificateUrl) {
        this.tlsCertificateUrl = tlsCertificateUrl;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("address", address)
                .add("name", name)
                .add("type", type)
                .add("manufacturer", manufacturer)
                .add("thumbnailUrl", thumbnailUrl)
                .add("settingsUrl", settingsUrl)
                .add("settingsValuesUrl", settingsValuesUrl)
                .add("webUiUrl", webUiUrl)
                .add("tlsCertificateUrl", tlsCertificateUrl)
                .toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Device)) return false;

        Device device = (Device) o;

        if (address != null ? !address.equals(device.address) : device.address != null) return false;
        if (name != null ? !name.equals(device.name) : device.name != null) return false;
        if (type != null ? !type.equals(device.type) : device.type != null) return false;
        if (manufacturer != null ? !manufacturer.equals(device.manufacturer) : device.manufacturer != null)
            return false;
        if (thumbnailUrl != null ? !thumbnailUrl.equals(device.thumbnailUrl) : device.thumbnailUrl != null)
            return false;
        if (settingsUrl != null ? !settingsUrl.equals(device.settingsUrl) : device.settingsUrl != null) return false;
        if (settingsValuesUrl != null ? !settingsValuesUrl.equals(device.settingsValuesUrl) : device.settingsValuesUrl != null)
            return false;
        if (webUiUrl != null ? !webUiUrl.equals(device.webUiUrl) : device.webUiUrl != null) return false;
        return tlsCertificateUrl != null ? tlsCertificateUrl.equals(device.tlsCertificateUrl) : device.tlsCertificateUrl == null;
    }

    @Override
    public int hashCode() {
        int result = address != null ? address.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + (manufacturer != null ? manufacturer.hashCode() : 0);
        result = 31 * result + (thumbnailUrl != null ? thumbnailUrl.hashCode() : 0);
        result = 31 * result + (settingsUrl != null ? settingsUrl.hashCode() : 0);
        result = 31 * result + (settingsValuesUrl != null ? settingsValuesUrl.hashCode() : 0);
        result = 31 * result + (webUiUrl != null ? webUiUrl.hashCode() : 0);
        result = 31 * result + (tlsCertificateUrl != null ? tlsCertificateUrl.hashCode() : 0);
        return result;
    }
}
