#!/bin/bash





#Varaible Delaration

PACKAGE="httpd wget unzip"
SVC="httpd"
URL='https://www.tooplate.com/zip-templates/2098_health.zip'
ART_NAME="2098_health"
TEMPDIR="/tmp/webfils"



# Installing Dependencies


echo Installing Packages

sudo yum install $PACKAGE -y > /dev/null
echo


# Start & Enable Service
echo "#############################################################"
echo Start & Enable HTTPD Service
echo "#############################################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo


#Creating Temp Directory
echo "#############################################################"
echo Starting Artifact Deployment
echo "#############################################################"

mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $URL > /dev/null

unzip $ART_NAME.zip > /dev/null

sudo cp -r $ART_NAME/* /var/www/html/
echo


# Bounce Service
echo "#############################################################"
echo Restarting HTTP Service 
echo "#############################################################"
 sudo systemctl restart $SVC
echo

# Clean up
echo "#############################################################"
echo Removing Temporary Files
echo "#############################################################"
rm -rf $TEMPDIR

sudo systemctl status $SVC 

ls /var/www/html/
