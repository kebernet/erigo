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

import dagger.ObjectGraph;
import net.kebernet.configuration.client.app.DeviceListPresenter;

import javax.swing.*;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/6/17.
 */
public class Erigo {
    private static final Logger LOGGER = Logger.getLogger(Erigo.class.getCanonicalName());
    private final ObjectGraph objectGraph;

    public static void main(String... args) throws Exception {
        UIManager.setLookAndFeel(
                UIManager.getSystemLookAndFeelClassName());
        System.setProperty("apple.laf.useScreenMenuBar", "true");
        new Erigo().run();
    }

    public Erigo(){
        this.objectGraph = ObjectGraph.create(new DefaultModule());
        this.objectGraph.get(DeviceListPresenter.class).bind();
    }

    public void run(){
        LOGGER.info("Starting UI.");
        SwingUtilities.invokeLater(() -> {
            try {
                JFrame frame = new JFrame("Erigo");
                frame.setTitle("Erigo");
                frame.setSize(640, 480);
                frame.setContentPane(new DeviceListViewImpl().rootPanel);
                frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                frame.setVisible(true);
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Substance Graphite failed to initialize");
            }
        });
    }
}
