#!/usr/bin/sudo bash
sudo yum update -y
sudo yum remove docker docker-common docker-selinux docker-engine
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce -y
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl enable docker
sudo docker pull chynr/deeznuts:latest
sudo docker run -itd --name webserver -p 8080:80 deeznuts:latest
