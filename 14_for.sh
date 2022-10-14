#!/bin/bash


 

MYUSERS="Erna alpha beta gamma"

for user in $MYUSERS
do

echo "Adding user $user"

 useradd $user 
id $user

echo "################################################################"
done




