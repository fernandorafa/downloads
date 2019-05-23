#!/bin/bash

#########################################
# Installing python
#########################################

# installing python-3.7.3
mkdir -p ~/local
wget https://www.python.org/ftp/python/3.7.3/python-3.7.3-macosx10.6.pkg
tar python-3.7.3-macosx10.6.pkg
cd python-3.7.3
./configure
make
make altinstall prefix=~/local  # specify local installation directory
ln -s ~/local/bin/python3.7 ~/local/bin/python
cd ..

~/local/bin/pip freeze  # to check python module version info
