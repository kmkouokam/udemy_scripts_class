#!/bin/bash


counter=0

while [ $counter -lt 5 ]
do
echo "looping"
echo "Value of counter is $counter"
counter=$(( $counter + 1 ))

sleep 4
done


echo out of the loop


