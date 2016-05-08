#!/bin/sh

## PRE-PREQUISITES ##

# Some packages we install may prompt for configuration variables or otherwise
# display a menu to our user. We opt to configure those packages later programmatically
# so we disable all of those prompts here.
export DEBIAN_FRONTEND=noninteractive

# Install the nodesource repositories for later installation of NodeJS and NPM
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -

# Install our operating system packages
apt-get install -y \
    git \
    apache2 \
    libapache2-mod-php5 \
    mysql-server \
    nodejs \
    smarty3 \
    php5 \
    php-apc \
    php5-cgi \
    php5-mysql \
    php5-sqlite \
    php5-memcache \
    phpunit

## CONFIGURE APACHE

# Change the user Apache runs under so we don't run into permissions issues
sed -i -e 's/www-data/vagrant/g' /etc/apache2/envvars

ln -s /vagrant/provision/submodules/elation/config/apache-elation.conf /etc/apache2/sites-available/001-elation.conf

ln -s /vagrant/provision/submodules/elation /var/www/elation
ln -s /vagrant/provision/submodules/janusweb /var/www/elation/components/janusweb
ln -s /vagrant/provision/submodules/share /var/www/elation/components/share

a2ensite 001-elation
a2enmod rewrite

# restart apache one last time
service apache2 restart

## CONFIGURE ELATION
cd /var/www/elation
./elation web init
./elation component enable engine physics share janusweb demos

## CONFIGURE JANUSWEB
cd /var/www/elation/components/janusweb
rm scripts/config.js
ln -s /vagrant/provision/conf/janusweb-config.js /var/www/elation/components/janusweb/scripts/config.js

npm run build
