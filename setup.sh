#!/bin/bash

#remove existin nvidia drivers
sudo sudo apt-get purge nvidia-*

sudo apt-get update
sudo apt-get install -y software-properties-common

#build essentials
sudo apt-get install -y build-essential git

# Nvidia driver
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt update
sudo apt install -y nvidia-410

#cuda
wget -O cuda.deb https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda-repo-ubuntu1604-10-0-local-10.0.130-410.48_1.0-1_amd64
sudo dpkg -i cuda.deb
sudo apt-key add /var/cuda-repo-10-0-local-10.0.130-410.48/7fa2af80.pub
sudo apt-get update
sudo apt-get install -y cuda

#mochimo
echo -e "export PATH=/usr/local/cuda-10.0/bin\${PATH:+:\${PATH}}\nexport LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64\${LD_LIBRARY_PATH:+:\${LD_LIBRARY_PATH}}" >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/mochimodev/mochimo.git
cd mochimo/src
./makeunx bin -L/usr/local/cuda-10.0/lib64
./makeunx install

echo -e "You need to reboot the machine to get mochimo working."
