#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt-cache search "^php[0-9].[0-9]-$1$" | awk '{print $1;system("apt remove -y "$1)}'

service apache2 restart
