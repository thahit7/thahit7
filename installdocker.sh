#!/bin/bash/
echo "install component"
sudo apt install apt-transport-https ca-certificates curl software-properties-common
# add key GPG
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# add docker repository to source apt
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
# Update package database with the docker
apt-cache policy docker-ce
# Install Docker
sudo apt install docker-ce
# Update status docker
sudo systemctl status docker
