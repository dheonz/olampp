#!/bin/bash
clear
apt-get install sudo -y
apt-get install curl -y
apt-get install perl -y
apt-get install toilet -y
apt-get install figlet -y
apt-get install lolcat -y
apt-get install git -y
apt-get install apache2 -y
etc/init.d/apache2 restart
wget -qO- https://raw.github.com/lmbbox/lampp/master/application/bin/install.sh | sh
apt-get clean
wget https://raw.githubusercontent.com/dheonz/script/master/ap && mv -f ap /bin/lamp && chmod 777 /bin/lamp
wget https://raw.githubusercontent.com/dheonz/olampp/master/000-default.conf && mv -f 000-default.conf /etc/apache2/sites-available/
wget https://raw.githubusercontent.com/dheonz/olampp/master/alias.conf && mv -f alias.conf /etc/apache2/mods-available/
mkdir -v /var/www/html/phpmyadmin && chmod 777 /var/www/html/phpmyadmin && cp -lr /usr/share/phpmyadmin /var/www/html/
sudo a2enmod rewrite
lamp
