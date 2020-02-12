#!/bin/bash

sudo chmod a+x ~/update-ubuntu/up.sh
mkdir -p ~/bin
cp ~/update-ubuntu/up.sh ~/bin/up
export PATH=~/bin:$PATH
source ~/.bashrc
