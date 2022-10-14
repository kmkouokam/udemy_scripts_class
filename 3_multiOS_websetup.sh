#!/bin/bash





#Varaible Delaration

#PACKAGE="httpd wget unzip"
#SVC="httpd"
URL='https://www.tooplate.com/zip-templates/2098_health.zip'
ART_NAME="2098_health"
TEMPDIR="/tmp/webfils"

yum --help &> /dev/null

if [ $? -eq 0 ]

then
# Set Variables for Centos
PACKAGE="httpd wget unzip"
SVC="httpd"

echo "Running Setup on Centos"

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

else

# Set Variables for Ubuntu
PACKAGE="apache2 wget unzip"
SVC="apache2"

echo "Running Setup on Ubuntu"

# Installing Dependencies


echo Installing Packages

sudo apt-get update
sudo apt-get install $PACKAGE -y > /dev/null
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
fi
