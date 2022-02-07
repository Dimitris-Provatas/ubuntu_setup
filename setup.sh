#!/bin/bash

apt update
apt upgrade -y
apt install unzip curl git docker docker.io g++ build-essential python3 docker-compose make
apt install software-properties-common
add-apt-repository ppa:ondrej/php
apt update
apt-get install php8.0-cli php8.0-common php8.0-mysql php8.0-curl php8.0-xml php8.0-mbstring
curl -sS https://getcomposer.org/installer -o composer-setup.php sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
usermod -a -G docker $USER
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
echo “\nalias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'” >> /home/$USER/.bashrc
source /home/$USER/.bashrc
nvm install 15.14.0
reboot
