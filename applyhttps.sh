#!/bin/sh
cd /usr/local/nginx/conf/vhost/
read -p "Enter your conf mame:"nam
sed -i "7 r ~/usersh/https.conf" $nam
cd ../
