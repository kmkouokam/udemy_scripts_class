#!/bin/bash


USR='devops'
for host in  `cat remote_host`
do

echo "#############################################"
echo "Connecting to remote $host"
echo "Pushing Script to $host"
scp 3_multiOS_websetup.sh $USR@$host:/tmp/

echo "Executing Script on $host"
ssh $USR@$host sudo /tmp/3_multiOS_websetup.sh
ssh $USR@$host sudo rm -rf /tmp/3_multiOS_websetup.sh
echo "#############################################"
echo
done
