#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

ln -sf /usr/bin/php8.0 /usr/bin/php
ln -sf /usr/bin/phar8.0 /usr/bin/phar
ln -sf /usr/bin/phar.phar8.0 /usr/bin/phar.phar
rm /usr/local/bin/phpunit

a2dismod php*
a2enmod php8.0
service apache2 restart
