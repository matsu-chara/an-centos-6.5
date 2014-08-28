#!/bin/sh

zshVersion="5.0.5"

cd /usr/local/src

yum install -y gcc ncurses-devel

wget http://sourceforge.net/projects/zsh/files/zsh/${zshVersion}/zsh-${zshVersion}.tar.bz2/download -O zsh-${zshVersion}.tar.bz2
tar jxvf zsh-${zshVersion}.tar.bz2

cd zsh-${zshVersion}
./configure --enable-multibyte --enable-locale --with-tcsetpgrp
make
make install

! grep -q /usr/local/bin/zsh /etc/shells && sudo sh -c "echo /usr/local/bin/zsh >> /etc/shells"

echo "please execute (without sudo) for changing login shell ===> 'chsh -s /usr/local/bin/zsh'"
