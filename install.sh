#!/bin/bash

cd update-ubuntu
sudo chmod a+x update.sh
mkdir ~/bin
mv update.sh ~/bin/up
sudo export PATH=~/bin:$PATH
sudo source ~/.bashrc
