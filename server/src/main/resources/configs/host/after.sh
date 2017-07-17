#!/bin/bash
#
#     Copyright (c) 2017 Robert Cooper
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

chmod +x {{erigo.targetDirectory}}/var/tmp/sethostname.sh
{{erigo.targetDirectory}}/var/tmp/sethostname.sh
retval=$?
if [ $retval -ne 0 ]; then
    echo "Failed to set the hostname $retval"
    exit -1
fi
shutdown -r now
