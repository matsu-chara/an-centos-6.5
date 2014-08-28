#! /bin/sh

gitVersion="2.1.0"

cd /usr/local/src

yum install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker

wget https://www.kernel.org/pub/software/scm/git/git-${gitVersion}.tar.gz
tar zxvf git-${gitVersion}.tar.gz
cd git-${gitVersion}

make prefix=/usr/local all
sudo make prefix=/usr/local install
