# install-php-ubuntu

Install multiple PHP version on Ubuntu with Ondřej Surý repository (only for Apache2 server actually)

![MIT License](https://img.shields.io/github/license/nhuhoai/install-php-ubuntu)
![version 0.1.0](https://img.shields.io/badge/version-0.1.0-green.svg)
![php 5.6, 7.x, 8.0](https://img.shields.io/badge/php-5.6,%207.x,%208.0-royalblue.svg?logo=php)

## Install

Just exec this command once for installing your PHP environment.

```bash
wget -O - https://raw.githubusercontent.com/nhuhoai/install-php-ubuntu/main/install.sh | sudo bash
```

The installation contains following extensions:

-   curl
-   json
-   mbstring
-   mysql
-   sqlite3
-   tokenizer
-   xdebug
-   xml
-   zip

The installation includes those packages:

-   apache2
-   mariadb-server
-   sqlite3
-   wget

And some tools are downloaded:

-   PHP_CodeSniffer
-   PHPUnit (not available for PHP 8.0 actually)

## How-to

Just type in your terminal those commands to switch PHP version

```bash
# Enable PHP 5.6
sudo enphp5.6

# Enable PHP 7.0
sudo enphp7.0

# Enable PHP 7.1
sudo enphp7.1

# Enable PHP 7.2
sudo enphp7.2

# Enable PHP 7.3
sudo enphp7.3

# Enable PHP 7.4
sudo enphp7.4

# Enable PHP 8.0 (no phpunit actually)
sudo enphp8.0
```

## License and 3rd party licenses

This project is under [MIT License](LICENSE)

Big thanks for:

-   [Ondřej Surý repository](https://deb.sury.org/)
-   [Sebastian Bergmann for PHPUnit](https://github.com/sebastianbergmann/phpunit/)
-   [Squiz for PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer/)
