#!/bin/sh
sudo yum install nginx
sudo nginx -v

echo "[nginx] \n name=nginx repo \n baseurl=https://nginx.org/packages/mainline/centos/7/$basearch/ \n gpgcheck=0 \n enabled=1" > /etc/yum.repos.d/nginx.repo

sudo yum update

echo "If you want to start the nginx run the command below \n 
sudo service nginx start \n 
and to stop \n 
sudo service nginx stop"

echo \n

echo "What is your site name?"
read SITE
sudo rm -rf ~/../../usr/share/nginx/html/*
sudo rm ~/../../usr/share/nginx/html/*
sudo mkdir ~/../../usr/share/nginx/html/$SITE

sudo chown -R $USER:$USER ~/../../usr/share/nginx/html/$SITE
sudo cp -r ~/builderFront/build/*  ~/../../usr/share/nginx/html/$SITE

export SITE
sh nginx.conf.sh

sudo service nginx restart
