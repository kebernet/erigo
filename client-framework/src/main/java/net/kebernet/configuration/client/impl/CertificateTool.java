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

import javax.net.SocketFactory;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.net.URL;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * A class for dealing with X509 SSL certs.
 */
@SuppressWarnings("WeakerAccess")
public class CertificateTool {

    private final KeyStore trustStore;

    public CertificateTool(KeyStore trustStore) {
        this.trustStore = trustStore;
    }

    public void addCertificatesForUrl(String url) throws Exception {
        addCertificatesToKeyStore(fetchCertificatesForUrl(url));
    }

    public void addCertificatesToKeyStore(List<X509Certificate>certificates) throws KeyStoreException {
        for(X509Certificate c: certificates){
            trustStore.setCertificateEntry("imported-"+c.getSerialNumber(), c);
        }
    }

    public List<X509Certificate> fetchCertificatesForUrl(String aURL) throws Exception {
        URL url = new URL(aURL);
        return fetchCertificatesForSocket(url.getHost(), url.getPort());
    }

    public List<X509Certificate> fetchCertificatesForSocket(String host, int port) throws Exception {
        SSLContext context = SSLContext.getInstance("SSL");
        TrustManager trustAllCerts =
            new X509TrustManager() {
                public java.security.cert.X509Certificate[] getAcceptedIssuers() {
                    return null;
                }
                public void checkClientTrusted(
                        java.security.cert.X509Certificate[] certs, String authType) {
                    for(X509Certificate cert : certs){
                        try {
                            cert.checkValidity();
                        } catch (CertificateNotYetValidException |CertificateExpiredException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
                public void checkServerTrusted(
                        java.security.cert.X509Certificate[] certs, String authType) {
                    for(X509Certificate cert : certs){
                        try {
                            cert.checkValidity();
                        } catch (CertificateNotYetValidException |CertificateExpiredException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            };

        TrustManager[] tm = new TrustManager[]{trustAllCerts};
        context.init(new KeyManager[0], tm, new SecureRandom());
        SocketFactory factory =  context.getSocketFactory();

        SSLSocket socket = (SSLSocket) factory.createSocket(host, port);
        socket.startHandshake();

        Certificate[] certs = socket.getSession().getPeerCertificates();
        return Arrays.stream(certs)
                .map( (c)-> (X509Certificate) c)
                .collect(Collectors.toList());
    }
}
