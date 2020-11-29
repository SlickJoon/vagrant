#!/bin/bash

apt update -y 
apt install -y nano git unzip screen
apt install apache2
systemctl enable apache2
systemctl stop apache2

rm -rf /var/www/html
ln -s /vagrant /var/www/html

systemctl start apache

apt install curl
apt install mysql-server
apt install php libapache2-mod-php php-mysql
systemctl enable mysql
systemctl start mysql

systemctl restart apache2

mysql -u root -p root -e "SHOW DATABASES";
