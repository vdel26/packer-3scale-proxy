#!/usr/bin/env bash

# install openresty
sudo apt-get update
sudo apt-get install -y libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make

# openresty version
VERSION="1.7.7.1"

curl -O "http://openresty.org/download/ngx_openresty-$VERSION.tar.gz"
tar xvfz ngx_openresty-$VERSION.tar.gz
cd ngx_openresty-$VERSION/

./configure --prefix=/opt/openresty -j2
make
sudo make install

# install download-3scale-config node module
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs

sudo npm install -g download-3scale-config
