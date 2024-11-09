#!/bin/bash
source ~/.bash_profile
cd ~/opt/snaplogic/run/lib
java -agentlib:jdwp=transport=dt_socket,server=y,address=${JCC_DEBUG_PORT},suspend=n -jar jcc.war jcc
