#!bin/bash

echo "disabling  default nginx version " 
dnf module diable nginx -y 
echo "enabling nginx 1.24 version"
dnf module enable nginx:1.24 -y
echo "installing nginx"
dnf install nginx -y 
