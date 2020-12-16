#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Add Ondrej repository
add-apt-repository ppa:ondrej/php
apt update

# Install Apache2, MariaDB, SQLite3 and wget packages
apt install -y apache2 mariadb-server sqlite3 wget

# Install PHP 5.6, 7.0, 7.1, 7.2, 7.3, 7.4 & 8.0
apt-cache search "^php[0-9].[0-9]$" | awk '{print $1;system("apt install -y "$1)}'

# Install PHP extensions: curl, json, mbstring, mysql, sqlite3, tokenizer, xdebug, xml, zip
apt-cache search "^php[0-9].[0-9]-(curl|json|mbstring|mysql|sqlite3|tokenizer|xdebug|xml|zip)$" | awk '{print $1;system("apt install -y "$1)}'

# Download PHP_CodeSniffer tools
wget -O /usr/local/bin/phpcs https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
wget -O /usr/local/bin/phpcbf https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
chmod +x /usr/local/bin/phpc*

# Download PHPUnit tool
wget -O /usr/local/bin/phpunit5 https://phar.phpunit.de/phpunit-5.phar
wget -O /usr/local/bin/phpunit6 https://phar.phpunit.de/phpunit-6.phar
wget -O /usr/local/bin/phpunit7 https://phar.phpunit.de/phpunit-7.phar
wget -O /usr/local/bin/phpunit8 https://phar.phpunit.de/phpunit-8.phar
wget -O /usr/local/bin/phpunit9 https://phar.phpunit.de/phpunit-9.phar
chmod +x /usr/local/bin/phpunit*

# Download enabler, extentions manager scripts
wget -O /usr/local/bin/enphp5.6 https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/enphp5.6.sh
wget -O /usr/local/bin/enphp7.0 https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/enphp7.0.sh
wget -O /usr/local/bin/enphp7.1 https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/enphp7.1.sh
wget -O /usr/local/bin/enphp7.2 https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/enphp7.2.sh
wget -O /usr/local/bin/enphp7.3 https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/enphp7.3.sh
wget -O /usr/local/bin/enphp7.4 https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/enphp7.4.sh
wget -O /usr/local/bin/enphp8.0 https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/enphp8.0.sh
wget -O /usr/local/bin/addphpext https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/addphpext.sh
wget -O /usr/local/bin/delphpext https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/delphpext.sh
chmod +x /usr/local/bin/enphp* /usr/local/bin/*phpext

# Enable PHP 7.4
enphp7.4
