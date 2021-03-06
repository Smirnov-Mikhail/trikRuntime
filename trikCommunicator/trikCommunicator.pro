# Copyright 2013 Yurii Litvinov
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TRIKCONTROL_DIR = ../trikControl/
TRIKSCRIPTRUNNER_DIR = ../trikScriptRunner/

TEMPLATE = lib

QT += network

DEFINES += TRIKCOMMUNICATOR_LIBRARY

include(../global.pri)

TARGET = trikCommunicator$$CONFIGURATION_SUFFIX

INCLUDEPATH = \
	$$PWD \
	$$PWD/include/trikCommunicator \
	$$TRIKSCRIPTRUNNER_DIR/include \
	$$TRIKCONTROL_DIR/include \

LIBS += -L$$DESTDIR -ltrikScriptRunner$$CONFIGURATION_SUFFIX

HEADERS += \
	$$PWD/include/trikCommunicator/trikCommunicator.h \
	$$PWD/src/connection.h \
	$$PWD/src/scriptRunnerWrapper.h \

SOURCES += \
	$$PWD/src/trikCommunicator.cpp \
	$$PWD/src/connection.cpp \
	$$PWD/src/scriptRunnerWrapper.cpp \
