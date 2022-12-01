#!/usr/bin/sudo bash
yum update -y
curl -fsSL https://get.docker.com/ | sh
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl enable docker
docker pull chynr/deeznuts:latest
docker run -itd --name webserver -p 8080:80 deeznuts:latest
