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
import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by rcooper on 7/18/17.
 */
public class DefaultModuleTest {

    @Test
    public void testModule(){
        ObjectGraph graph = ObjectGraph.create(new DefaultModule());
        AppFlowImpl impl = graph.get(AppFlowImpl.class);
    }

}