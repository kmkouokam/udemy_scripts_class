#!/bin/bash

echo Enter your skills
read SKILL
echo your $SKILL is in hight demand in the IT Industry


#-p = prompt, so it going to print the username & wait that user enter a value that will be stored in USR
read -p 'Username:' USR  

# s = suppress the input. that means when the user type, the input will not be seen.

read -sp 'Password' pass 


echo

echo login Successfull: Welcome User $USR
