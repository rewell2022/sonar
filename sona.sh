#!/bin/bash
# author = serge
# date=06-20-2022

echo "please install sonarqube"
if [ UID!=1000 ]
then
echo "login as vagrant"

fi
sudo yum update -y
 sudo yum install java-11-openjdk-devel -y

if [ $? -ne 0 ]
 then
 echo "java failed"
exit 1
fi
sudo yum install java-11-openjdk -y
cd /opt

sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

 sudo unzip /opt/sonarqube-9.3.0.51899.zip


sudo unzip /opt/sonarqube-9.3.0.51899.zip


sudo chown vagrant:vagrant /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
