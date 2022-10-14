#!/bin/bash


counter=2

while true
do
echo "looping"
echo "Value of counter is $counter"
counter=$(( $counter * 2 ))

sleep 4
done


echo out of the loop


