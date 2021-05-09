#!/bin/sh
# -*- coding: utf-8 -*-

# required packages(debian10)
apt-get install make libssl-dev libghc-zlib-dev libcurl4-gnutls-dev
apt-get install libexpat1-dev gettext unzip

# install git
cd /usr/local/src
curl -o git.zip -L https://github.com/git/git/archive/refs/heads/master.zip
if [ -d git-master ]
then
    rm -rf git-master
fi
unzip git.zip
cd git-master/
make prefix=/usr/local all
make prefix=/usr/local install
