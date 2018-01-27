#!/bin/bash
mv /var/ariadown/* /home/wwwroot/necloud/data/mh/files/Aria/
sudo -u www /home/wwwroot/necloud/occ files:scan --all
