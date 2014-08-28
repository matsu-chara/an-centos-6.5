#!/bin/sh

yum install -y --enablerepo=remi mysql mysql-devel mysql-server mysql-utilities
service mysqld start
chkconfig mysqld on
