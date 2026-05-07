#!bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]; then
  echo -e "\e[32m You should run this script as root  user or with sudo privileges \e[0m"
  exit 1
fi

echo "disabling  default nginx version " 
dnf module diable nginx -y 

echo "enabling nginx 1.24 version"
dnf module enable nginx:1.24 -y

echo "installing nginx"
dnf install nginx -y 
