#!/bin/bash
echo "Enter the number of port to open firewall."
echo "Enter signal if you want quit."
bol=true
while [ $bol = "true" ]
do
    echo -n "Enter the number of port:"
    read num
    if [[ $num =~ ^[0-9]*$  ]]
    then
        firewall-cmd --permanent --add-port=$num/tcp
    else
        firewall-cmd --reload
        exit
    fi
done
