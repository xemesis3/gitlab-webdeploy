#!/bin/sh
sudo yum update -y
sudo yum install vim -y
sudo yum install git -y
sudo yum install docker -y
sleep 5
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull arryyaann10/prj:latest
sleep 3
sudo docker run -itd --name webserverHeat -p 80:3000 arryyaann10/prj:latest
sudo echo "Done!!"

