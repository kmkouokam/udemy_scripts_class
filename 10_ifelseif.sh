#!/bin/bash




value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)


if  [ $value -eq 1 ]

then
echo 1 Active Network Adapter found

elif [ $value -gt 1 ]
then

echo Found Multiple Active Interface.

else
echo No Active Interface found

fi

