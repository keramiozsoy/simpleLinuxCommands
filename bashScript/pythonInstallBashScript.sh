#!/bin/bash

echo -e "\n     keramiozsoy                       \n\n"

LOCATION_FIRST=$(pwd)
LOCATION=pythonLocation
LOCATION_SETUP=$LOCATION/setup
LOCATION_USE=$LOCATION/use
PYTHON=Python3.6
PYTHON_VER=Python-3.6.4
VER=3.6.4
#
#
if [ ! -e "$LOCATION" ]; then
	mkdir $LOCATION
     	echo "It has created $LOCATION"
else 
    	echo "-" # file exists
fi 

if [ ! -e "$LOCATION_SETUP" ]; then
	mkdir $LOCATION_SETUP
     	echo "It has created $LOCATION_SETUP"
else 
    	echo "--" # file exists
fi 

if [ ! -e "$LOCATION_USE" ]; then
	mkdir $LOCATION_USE
     	echo "It has created $LOCATION_USE"
else 
    	echo "---" # file exists
fi 

#
#
cd $LOCATION_SETUP
#
#
wget https://www.python.org/ftp/python/$VER/Python-$VER.tgz
#
#
tar -xzvf Python-$VER.tgz
#
#
echo -e "\n I downloaded $PYTHON_VER \n"
echo -e "\n Python location $LOCATION_FIRST/$LOCATION \n"

cd $PYTHON_VER

./configure --prefix=$LOCATION_FIRST/$LOCATION_USE
make
make test # If you dont want to do test can able to close this line.
sudo apt-get install zlib1g-dev
sudo make install
#
sed -i -e "\$a\######" $HOME/.bashrc 
sed -i -e "\$a\alias python='$LOCATION_FIRST/$LOCATION_USE/bin/${PYTHON,,}'" $HOME/.bashrc 
sed -i -e "\$a\######" $HOME/.bashrc 
#
#
source $HOME/.bashrc
#
#

echo -e "\n You should restart and type in terminal :) >> python \n"
