#!/usr/bin/sudo bash
yum update -y
curl -fsSL https://get.docker.com/ | sh
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl enable docker
sudo docker pull chynr/deeznuts:latest
sudo docker run -itd --name webserver -p 8080:80 deeznuts:latest
