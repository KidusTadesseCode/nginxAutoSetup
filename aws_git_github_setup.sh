#!/bin/sh
# Installing git 
sudo yum update -y
sudo yum install git -y
git version

# Installing NodeJs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"

# Connecting gitHub to your es2 instance
clear
cd ~/.ssh
echo 'What is the username for your github accout'
read USERNAME
IDFIleNAME=$USERNAME"_id_rsa"
ssh-keygen -f ./$IDFIleNAME -t rsa -N ""
echo 'Copy and past this public key to your github account.'
echo '\n'
cat ~/.ssh/$IDFIleNAME'.pub'
echo \#$USERNAME '
Host github.com
\t HostName github.com
\t IdentityFile ~/.ssh/'$IDFIleNAME'
'>>config
chmod 400 ~/.ssh/$IDFIleNAME
echo '\n Press Enter key to exit'
read ANYKEY


sudo yum install nginx
sudo nginx -v

# test this frist echo "[nginx] \n name=nginx repo \n baseurl=https://nginx.org/packages/mainline/centos/7/$basearch/ \n gpgcheck=0 \n enabled=1" > /etc/yum.repos.d/nginx.repo

sudo yum update

echo "if you want to start the nginx run the command below
sudo service nginx start
to stop nginx
sudo service nginx stop"

echo "What is your site name?"
read SITE

sudo rm -rf ~/../../usr/share/nginx/html/*
sudo rm ~/../../usr/share/nginx/html/*
sudo mkdir ~/../../usr/share/nginx/html/$SITE

sudo chown -R $USER:$USER ~/../../usr/share/nginx/html/$SITE
sudo cp -r ~/builderFront/build/*  ~/../../usr/share/nginx/html/$SITE

echo "Do you wish to install this nginx?"
select NGINX in "Yes" "No"; do
    case $NGINX in
        Yes ) sh aws_nginx_setup.sh; break;;
        No ) exit;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done





