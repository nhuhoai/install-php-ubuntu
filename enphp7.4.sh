#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

ln -sf /usr/bin/php7.4 /usr/bin/php
ln -sf /usr/bin/phar7.4 /usr/bin/phar
ln -sf /usr/bin/phar.phar7.4 /usr/bin/phar.phar
ln -sf /usr/local/bin/phpunit9 /usr/local/bin/phpunit

a2dismod php*
a2enmod php7.4
service apache2 restart
