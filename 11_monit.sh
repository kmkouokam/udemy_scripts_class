#!/bin/bash


echo "######################################################################################"

date
 ls /var/run/httpd/httpd.pid/ > /dev/null
if [ $? -eq 0 ]

then
echo "httpd process is running"
else
echo "Httpd process is not Running"

echo "Starting the process"

systemctl start httpd

  if [ $? -eq 0 ]
  then
  echo "Process Started Successfully"
  else
  echo "Process Sarting Failed, contact the Admin"

  fi
fi
echo "######################################################################################"
echo
