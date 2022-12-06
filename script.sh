#!/usr/bin/sudo bash
sudo yum update -y
sudo yum install vim -y
sudo yum install git -y
sudo yum install docker -y
sleep 5
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull chynr/heat:latest
sleep 3
sudo docker run -it --name webserverHeat -p 80:80 chynr/heat:latest
sudo docker exec heat /bin/bash -c "systemctl enable apache2";"systemctl start apache2"
sudo echo "Done!!"
