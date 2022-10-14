#!/bin/bash

read -p "Enter a Number: " NUM
echo
if [ $NUM -gt 100 ]
then
echo "We have entered in if block"

sleep 3

echo "your number is greater than 100"
else

echo your Nimber is less than 100
date
fi

echo script execution completed

