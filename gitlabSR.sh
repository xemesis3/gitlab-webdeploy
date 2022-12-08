#!/bin/bash
apt update -y
apt upgrade -y
apt install apache2
apt install systemctl -y
systemctl status apache2
systemctl enable apache2
apt install vim -y
