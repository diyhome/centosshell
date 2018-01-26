#!/bin/bash
echo "Enter the number of port to remove firewall."
echo "Enter signal if you want quit."
bol=true
firewall-cmd --list-all
while [ $bol = "true" ]
do
    echo -n "Enter the number of port:"
    read num
    if [[ $num =~ ^[0-9]*$  ]]
    then
        firewall-cmd --permanent --remove-port=$num/tcp
    else
        firewall-cmd --reload
        exit
    fi
done
