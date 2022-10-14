#!/bin/bash

# Installing Dependencies


echo Installing Packages

sudo yum install wget unzip httpd -y > /dev/null
echo


# Start & Enable Service
echo "#############################################################"
echo Start & Enable HTTPD Service
echo "#############################################################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo


#Creating Temp Directory
echo "#############################################################"
echo Starting Artifact Deployment
echo "#############################################################"
# With -p if the dir already exit, it will not through any error
mkdir -p /tmp/wefiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null

unzip 2098_health.zip > /dev/null

sudo cp -r 2098_health/* /var/www/html/
echo


# Bounce Service
echo "#############################################################"
echo Restarting HTTP Serviceecho 
echo "#############################################################"
 sudo systemctl restart httpd
echo

# Clean up
echo "#############################################################"
echo Removing Temporary Files
echo "#############################################################"
rm -rf /tmp/wefiles

sudo systemctl status httpd

ls /var/www/html/
