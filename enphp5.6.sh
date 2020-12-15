#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

ln -sf /usr/bin/php5.6 /usr/bin/php
ln -sf /usr/bin/phar5.6 /usr/bin/phar
ln -sf /usr/bin/phar.phar5.6 /usr/bin/phar.phar
ln -sf /usr/local/bin/phpunit5 /usr/local/bin/phpunit

a2dismod php*
a2enmod php5.6
service apache2 restart
