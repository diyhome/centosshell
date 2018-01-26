#!/bin/bash

echo "Enter your port of ssh:"
read num
service firewalld start
firewall-cmd --permanent --add-port=$num/tcp
service firewalld restart
