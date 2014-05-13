#!/bin/bash

apt-get update
apt-get upgrade -y --force-yes
apt-get install \
  build-essential \
  curl \
  git \
  python \
  -y --force-yes

curl -sSL https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm
gem install chef --no-ri --no-rdoc
gem install librarian-chef --no-ri --no-rdoc

rm -rf /chef
cp -R /vagrant /chef
cd /chef
librarian-chef install
chef-solo -c solo.rb
