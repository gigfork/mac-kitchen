#!/bin/bash

# Bootstraps rebenv for the current user and installs
# ruby 1.9.3

local RUBY_VERSION=1.9.3-p194

## Install rbenv
pushd $HOME
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

[ ! -f ~/.gemrc ] && echo -n "---\ngem: --no-ri --no-rdoc"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

source ~/.bash_profile
popd

# Install ruby
pushd /tmp
curl -O http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-$RUBY_VERSION.tar.gz
tar xzf ruby-$RUBY_VERSION.tar.gz
cd ruby-$RUBY_VERSION

./configure --prefix=$HOME/.rbenv/versions/$RUBY_VERSION
make && make install
popd

rbenv global $RUBY_VERSION
rbenv rehash

## Install prerequisites
gem install chef chef-solo librarian
rbenv rehash
