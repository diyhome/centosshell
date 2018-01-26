#!/bin/sh
confdir="/home/wwwroot/aria2/aria2.conf"
sudo -u www aria2c -D --conf-path=$confdir
