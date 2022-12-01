#!/usr/bin/sudo bash
yum update -y
yum install docker.io -y
systemctl start docker
systemctl enable docker
docker pull chynr/deeznuts:latest
docker run -itd --name webserver -p 8080:80 deeznuts:latest
