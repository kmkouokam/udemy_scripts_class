#!/bin/bash


echo "######################################################################################"

date
#ls /var/run/httpd/httpd.pid > /dev/null

#The operator -f will check if the file /var/run/httpd/httpd.pid exit. If it does exit, that means the proces is running & if it's not running it will start the process
if [ -f /var/run/httpd/httpd.pid ]

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
