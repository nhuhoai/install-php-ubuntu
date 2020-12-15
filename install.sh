#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

add-apt-repository ppa:ondrej/php
apt update
apt install -y wget

apt install -y apache2
apt install -y php5.6 php5.6-curl php5.6-json php5.6-mbstring php5.6-mysql php5.6-sqlite3 php5.6-tokenizer php5.6-xdebug php5.6-xml php5.6-zip
apt install -y php7.0 php7.0-curl php7.0-json php7.0-mbstring php7.0-mysql php7.0-sqlite3 php7.0-tokenizer php7.0-xdebug php7.0-xml php7.0-zip
apt install -y php7.1 php7.1-curl php7.1-json php7.1-mbstring php7.1-mysql php7.1-sqlite3 php7.1-tokenizer php7.1-xdebug php7.1-xml php7.1-zip
apt install -y php7.2 php7.2-curl php7.2-json php7.2-mbstring php7.2-mysql php7.2-sqlite3 php7.2-tokenizer php7.2-xdebug php7.2-xml php7.2-zip
apt install -y php7.3 php7.3-curl php7.3-json php7.3-mbstring php7.3-mysql php7.3-sqlite3 php7.3-tokenizer php7.3-xdebug php7.3-xml php7.3-zip
apt install -y php7.4 php7.4-curl php7.4-json php7.4-mbstring php7.4-mysql php7.4-sqlite3 php7.4-tokenizer php7.4-xdebug php7.4-xml php7.4-zip
apt install -y php8.0 php8.0-curl php8.0-mbstring php8.0-mysql php8.0-sqlite3 php8.0-tokenizer php8.0-xdebug php8.0-xml php8.0-zip

wget -O /usr/local/bin/phpcs https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
wget -O /usr/local/bin/phpcbf https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
chmod +x /usr/local/bin/phpc*

wget -O /usr/local/bin/phpunit5 https://phar.phpunit.de/phpunit-5.phar
wget -O /usr/local/bin/phpunit6 https://phar.phpunit.de/phpunit-6.phar
wget -O /usr/local/bin/phpunit7 https://phar.phpunit.de/phpunit-7.phar
wget -O /usr/local/bin/phpunit8 https://phar.phpunit.de/phpunit-8.phar
wget -O /usr/local/bin/phpunit9 https://phar.phpunit.de/phpunit-9.phar
chmod +x /usr/local/bin/phpunit*

