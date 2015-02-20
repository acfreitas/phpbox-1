PHPBox
====

## Introduction

This project automates the setup of a development and testing environment for PHP, using Vagrant and Chef Solo.

## Requirements

* [VirtualBox](https://www.virtualbox.org) 
* [Vagrant](http://vagrantup.com)
* [Berksfile](http://berkshelf.com/v2.0/)

## Setup

    $ git clone --recursive https://github.com/ericmaicon/phpbox.git
    $ cd phpbox
    $ berks install
    $ vagrant up

## The Box contains

- Debian 7.6 64bit

- LibXML
- Curl
- OpenSSL
- zLib
- ncurses
- libXpm
- XSTL
- JPEG
- Free Type
- libPNG
- mcrypt

- FreeTDS
- Instant Client
- Ioncube
- PHP 5.5
    - --prefix=/usr/local/php
      --with-config-file-path=/usr/local/php/etc
      --with-zlib
      --with-curl=/usr/src/curl
      --with-openssl=/usr
      --with-pdo-pgsql
      --with-jpeg-dir=/usr/local/lib
      --with-freetype-dir
      --with-png-dir=/usr/local/libpng-1.6.10
      --with-gd
      --with-libdir=/lib/x86_64-linux-gnu
      --with-mcrypt
      --with-oci8=instantclient,/usr/local/oracle-client-12-1
      --with-pdo-oci=instantclient,/usr/local/oracle-client-11-2,10.2.0.4.0
      --with-pdo-dblib=/usr/local/freetds/
      --with-mysql
      --with-pdo-mysql
      --enable-mbstring
      --enable-fpm
      --enable-soap
      --enable-calendar
      --enable-sockets
      --enable-zip
      --enable-gd-native-ttf
      --disable-debug

      --with-pcre-regex=/usr/local/pcre/lib/
      --with-xpm-dir=/usr
      --with-imap=/opt/php_with_imap_client/
      --with-imap-ssl=/usr
      --with-openssl=/usr/include/openssl
      
      --with-apxs2=/usr/local/apache2/bin/apxs
      --with-icu-dir=/usr
      --with-libxml-dir=/opt/xml2
      --with-pdo-sqlite 
      --with-gettext
      --with-kerberos
      --with-zlib-dir=/usr
      --with-xsl
      --enable-bcmath
      --enable-exif
      --enable-ftp
      --enable-gd-native-ttf
      --enable-intl
      --enable-libxml
      --disable-mbregex

- PHPUnit
- MySQL
- Mongo
- PostgreSQL
- Composer
- Apache2

## More information
Check the [Vagrant documentation](http://vagrantup.com/v1/docs/index.html) and [Chef Solo documentation](https://docs.chef.io/chef_solo.html)
