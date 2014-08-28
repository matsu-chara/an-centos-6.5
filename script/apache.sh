#!/bin/sh

yum install -y httpd httpd-devel
service httpd start
chkconfig httpd on
