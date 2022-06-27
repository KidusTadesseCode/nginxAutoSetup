#!/bin/sh
# chmod +x index.sh
# chmod +x git.sh
# chmod +x node.sh
# chmod +x ssh_github.sh
source ./ssh_github.sh
source ./repo.sh
source ./nginx.sh

#temp Delete this line and the file
# sh test.sh

echo "Do you wish to install git?"
select GIT in "Yes" "No"; do
    case $GIT in
        Yes )sh git.sh; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done

echo "Do you wish to install nodejs?"
select NODEJS in "Yes" "No"; do
    case $NODEJS in
        Yes ) sh node.sh; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done


echo "Would you like me to help you setup ssh keys so you can connect to github?"
select SSLGITHUB in "Yes" "No"; do
    case $SSLGITHUB in
        Yes )ssh_git; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done


echo "Do you wish to clone a repo? Inorder to use this feuter your ec2 must be connected"
select REPO in "Yes" "No"; do
    case $REPO in
        # git_Repo is from ./repo.sh
        Yes ) git_Repo; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done


# REPO_LINK form repo.sh
REPO_LINK=$(git_Repo)
echo "The repo link is $REPO_LINK"

echo "Do you wish to install nginx? To use this feture you must have a build file"
select NGINX in "Yes" "No"; do
    case $NGINX in
        # nginx_Install is from ./nginx.sh
        Yes ) nginx_Install; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done



echo "Would you like me to launch your application with nginx?"
select NGINXSETUP in "Yes" "No"; do
    case $NGINXSETUP in
        # nginx_goLive is from ./nginx.sh
        Yes ) nginx_goLive; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done