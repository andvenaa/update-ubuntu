# Install
How to install
```sh
git clone https://github.com/andvenaa/update-ubuntu.git
```

## Run this first.
```sh
sudo chmod a+x ~/update-ubuntu/up
```

## Then run these commands
```sh
sudo mv ~/update-ubuntu/up /usr/bin
```

Then you can just login to your system, run **```up```** and enter your sudo password. And it will update. Will also tell you if the system need to restart.

## Update script from git
```sh
cd ~/update-ubuntu/
git fetch
```

##### The system will run the following updates.
```sh
    sudo apt-get update;
    sudo apt-get upgrade -y;
    sudo apt-get full-upgrade -y;
    sudo apt-get autoremove -y;
    sudo apt-get autoclean -y;
```
