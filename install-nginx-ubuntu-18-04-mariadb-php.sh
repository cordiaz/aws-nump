#!/bin/bash
echo "=========install nginx========="
sudo apt update -y
sudo ufw app info "Nginx Full"
echo "========install mariadb========"
# sudo apt install mariadb-server mariadb-client
sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8 
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu bionic main'
sudo apt update
sudo apt install mariadb-server
echo "=========install php-fpm php-mysql========="
echo "cgi.fix_pathinfo=0" >> /etc/php7.2/fpm/php.ini
echo "setelah selesai instalasi check"
echo "sudo systemctl status mysql"
echo "sudo systemctl status nginx"
echo "sudo systemctl status php7.2-fpm"
echo "sumber: https://www.ostechnix.com/install-nginx-mariadb-php-lemp-stack-ubuntu-16-04-lts/"
