#!/bin/bash

###  This script prints system info #####
echo "welcome to bash script"

echo
# Checking system uptime
echo "#########################################################"
echo "the uptime of the system is:"
uptime
 echo

echo " ########################################################"
# Checking Memory Utilizatio
echo Memory Utilization
free -m
echo
# Checking Disk Utilization
echo "#########################################################"
echo Disk Utilazation
df -h
echo
