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

import javax.inject.Inject;
import javax.inject.Singleton;
import javax.swing.*;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import java.util.function.Consumer;

/**
 * Created by rcooper on 7/11/17.
 */
@Singleton
public class SettingViewFactory {

    @Inject
    public SettingViewFactory(){
    }


    JComponent getComponentForType(String type, String initialValue, Consumer<String> onValueChangeCallback) {
        if(type == null){
            return null;
        }
        switch (type){
            case "password":
                return createPasswordField(initialValue, onValueChangeCallback);
           default:
                return createTextField(initialValue, onValueChangeCallback);
        }
    }

    private JTextField createTextField(String initialValue, Consumer<String> onValueChangeCallback){
        JTextField textField = new JTextField(initialValue);
        textField.getDocument().addDocumentListener(new DocumentListener() {
            public void changedUpdate(DocumentEvent e) {
                onValueChangeCallback.accept(textField.getText());
            }
            public void removeUpdate(DocumentEvent e) {
                onValueChangeCallback.accept(textField.getText());
            }
            public void insertUpdate(DocumentEvent e) {
                onValueChangeCallback.accept(textField.getText());
            }
        });
        return textField;
    }

    private JPasswordField createPasswordField(String initialValue, Consumer<String> onValueChangeCallback){
        JPasswordField textField = new JPasswordField(initialValue);
        textField.getDocument().addDocumentListener(new DocumentListener() {
            public void changedUpdate(DocumentEvent e) {
                onValueChangeCallback.accept(textField.getText());
            }
            public void removeUpdate(DocumentEvent e) {
                onValueChangeCallback.accept(textField.getText());
            }
            public void insertUpdate(DocumentEvent e) {
                onValueChangeCallback.accept(textField.getText());
            }
        });
        return textField;
    }
}
