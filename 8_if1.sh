#!/bin/bash

read -p "Enter a Number: " NUM
echo
if [ $NUM -gt 100 ]
then
echo "We have enterd in if block"

sleep 3

echo "your number is greater than 100"


echo
date

else
echo you have entered a number less than 100
fi

echo script execution completed

