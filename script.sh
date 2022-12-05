#!/usr/bin/sudo bash
sudo yum update -y
sudo yum remove docker docker-common docker-selinux docker-engine
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce -y
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl enable docker
sudo docker pull chynr/rally:latest
sleep 3
sudo docker run -it --name webserverRally -p 80:80 rally:latest
sleep 5
service apache2 start
exit
