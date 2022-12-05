#!/usr/bin/sudo bash
sudo yum update -y
sudo yum install vim -y
sudo yum install git -y
sudo yum install docker -y
sleep 5
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull chynr/rally:latest
sleep 3
sudo docker run -it --name webserverRally -p 80:80 chynr/rally:latest
sleep 5
service apache2 start
exit
