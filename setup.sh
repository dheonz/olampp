#!/bin/bash
clear
apt-get install sudo -y
sudo apt-get update -y
sudo apt-get install curl -y
sudo apt-get install perl -y
sudo apt-get install toilet -y
sudo apt-get install figlet -y
sudo apt-get install lolcat -y
sudo apt-get install git -y
sudo apt-get install apache2 -y
etc/init.d/apache2 restart
sudo apt-get install mysql-server mysql-client -y
etc/init.d/mysql restart
sudo apt-get install php5 php-pear php5-mysql -y
sudo apt-get install php5-common libapache2-mod-php5 php5-cli -y
sudo apt-get install php5-mysql php5-curl -y
sudo apt-get install phpmyadmin -y
wget -qO- https://raw.github.com/lmbbox/lampp/master/application/bin/install.sh | sh
apt-get clean
wget https://raw.githubusercontent.com/dheonz/script/master/ap && mv -f ap /bin/lamp && chmod 777 /bin/lamp
wget https://raw.githubusercontent.com/dheonz/olampp/master/000-default.conf && mv -f 000-default.conf /etc/apache2/sites-available/
wget https://raw.githubusercontent.com/dheonz/olampp/master/alias.conf && mv -f alias.conf /etc/apache2/mods-available/
mkdir -v /var/www/html/phpmyadmin && chmod 777 /var/www/html/phpmyadmin && cp -lr /usr/share/phpmyadmin /var/www/html/
lamp