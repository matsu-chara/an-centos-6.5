#!/bin/sh

yum install -y --enablerepo=remi,remi-php55 php php-opcache php-devel php-mbstring php-mcrypt php-mysqlnd php-pdo php-pecl-xdebug php-cli php-common php-pecl-apcu php-fpm

cp -f /vagrant/resource/etc/php.ini /etc/php.ini
cp -f /vagrant/resource/etc/php-fpm.d/www.conf /etc/php-fpm.d/www.conf

cp -f /vagrant/resource/var/www/html/index.php /var/www/html/index.php

/etc/init.d/php-fpm start
chkconfig php-fpm on

curl -sS https://getcomposer.org/installer | php
mv -f composer.phar /usr/local/bin/composer
