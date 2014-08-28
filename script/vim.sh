#!/bin/sh
yum install -y gcc mercurial ncurses-devel lua lua-devel
yum install -y perl perl-devel perl-ExtUtils-Embed ruby ruby-devel python python-devel

cd /usr/local/src/
hg clone https://vim.googlecode.com/hg/ vim
cd vim

./configure --with-features=huge \
            --enable-largefile \
            --enable-luainterp \
            --enable-gui=auto \
            --enable-cscope \
            --enable-rubyinterp \
            --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.6/config \
            --enable-perlinterp \
            --enable-fail-if-missing

make
make install
