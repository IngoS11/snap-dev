#!/bin/bash
pwd
cp jcc/* ~
cd ~
snapfile=$(find ~ -name "*.rpm" -type f)
echo "The match that was found was: $snapfile"
rpm2cpio $snapfile | cpio -idvm
mv ~/*.slpropz ~/opt/snaplogic/etc
chmod 600 ~/opt/snaplogic/etc/*.slpropz
rm $snapfile
rm -r ~/usr
echo 'export SL_ROOT=$HOME/opt/snaplogic' >> ~/.bash_profile
echo 'export SNAP_HOME=/workspaces/{$1}' >> ~/.bash_profile
echo 'export JCC_DEBUG_PORT=8827' >> ~/.bash_profile
echo "JCC is install and can be run by executing: cd ~/opt/snaplogic/run/lib && java -jar jcc.war jcc"
