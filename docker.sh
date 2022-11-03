#!/bin/bash


#Author: Gloria Parker
#Date: November 3 2022


echo "These are the steps on how to install Docker in Centos7"


sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo -y

if [ $? -eq 0 ]
then
echo "Docker will install shortly"
else
echo "double check OS Version"
fi

 sudo yum install docker-ce docker-ce-cli containerd.io -y
 sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

echo "Docker succesfully installed!"

