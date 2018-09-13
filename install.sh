#!/bin/bash

echo "==========================================="
echo "===          Setting up Mac             ==="
echo "==========================================="

sudo easy_install pip
sudo easy_install ansible

installdir="/tmp/setupmac-$RANDOM"
mkdir $installdir

git clone https://github.com/nico2che/mac-setup.git $installdir 
if [ ! -d $installdir ]; then
    echo "git cloned failed"
    echo "exiting..."
    exit 1
else
    cd $installdir 
    ansible-playbook -i ./hosts playbook.yml --verbose
fi

echo "cleaning up..."

rm -Rfv /tmp/$installdir

echo "and we are done! Enjoy!"

exit 0