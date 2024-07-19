#!/bin/bash

sudo apt-get update && sudo apt-get upgrade
sudo apt install lightdm ubuntu-desktop xrdp -y
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
sudo dpkg-reconfigure gdm3
sudo service gdm3 restart
sudo ufw allow ssh
sudo ufw allow from 127.0.0.1 to any port 3389 proto tcp
