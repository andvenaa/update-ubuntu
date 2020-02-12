#!/bin/bash

sudo chmod a+x ~/update-ubuntu/up.sh
mkdir ~/bin
cp ~/update-ubuntu/up.sh ~/bin/up
sudo export PATH=~/bin:$PATH
sudo source ~/.bashrc
