#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

ln -sf /usr/bin/php7.0 /usr/bin/php
ln -sf /usr/bin/phar7.0 /usr/bin/phar
ln -sf /usr/bin/phar.phar7.0 /usr/bin/phar.phar
ln -sf /usr/local/bin/phpunit6 /usr/local/bin/phpunit

a2dismod php*
a2enmod php7.0
service apache2 restart
