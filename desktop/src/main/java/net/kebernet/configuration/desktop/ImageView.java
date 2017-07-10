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
package net.kebernet.configuration.desktop;

import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/7/17.
 */
public class ImageView extends JPanel {
    private static final Logger LOGGER = Logger.getLogger(ImageView.class.getCanonicalName());
    private BufferedImage img;

    public ImageView() {
    }

    public void setImageUrl(String url){
        try {
            HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
            if(connection.getResponseCode() != 200){
                LOGGER.warning("Got response code "+connection.getResponseCode() + " from "+url);
                return;
            }
            img = ImageIO.read(connection.getInputStream());
        } catch (IOException e) {
            LOGGER.log(Level.WARNING, "Failed to set image to url "+url, e);
        }
    }

    @Override
    public Dimension getPreferredSize() {
        return img == null ? new Dimension(200, 200) : new Dimension(img.getWidth(), img.getHeight());
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g.create();
        LinearGradientPaint lgp = new LinearGradientPaint(
                new Point(0, 0),
                new Point(0, getHeight()),
                new float[]{0f, 1f},
                new Color[]{Color.GREEN, Color.YELLOW});
        g2d.setPaint(lgp);
        g2d.fillRect(0, 0, getWidth(), getHeight());
        if (img != null) {
            int x = (getWidth() - img.getWidth()) / 2;
            int y = (getHeight() - img.getHeight()) / 2;
            g2d.drawImage(img, x, y, this);
        }
        g2d.dispose();
    }
}