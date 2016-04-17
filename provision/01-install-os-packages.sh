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
    mysql-server \
    nodejs \
    php5 \
    php5-mysql
