#!/bin/bash
sudo yum -y update
sudo yum -y install git docker
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo git clone https://github.com/Sarvarabani/word-press.git
sudo cd word-press
sudo docker-compose up -d
