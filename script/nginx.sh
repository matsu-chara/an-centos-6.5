#!/bin/sh
rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
yum install -y nginx

cp -f /vagrant/resource/etc/nginx/cond.d/default.conf /etc/nginx/conf.d/default.conf

service nginx start
chkconfig nginx on

