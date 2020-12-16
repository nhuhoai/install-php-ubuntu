#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt-cache search "^php*.*-$1$" | awk '{print $1;system("apt install -y "$1)}'

service apache2 restart
