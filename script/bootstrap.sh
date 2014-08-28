#!/bin/sh
rpm -Uvh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

echo "include_only=.jp" | sudo tee -a /etc/yum/pluginconf.d/fastestmirror.conf
yum update
yum groupinstall -y "Development Tools"
