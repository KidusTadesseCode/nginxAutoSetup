#!/bin/sh
echo 'What would you like this ssl keys to be called? You can use your username or anything.'
read USERNAME

echo "Passphrase for the key? This is optional and to skip press enter 
If you provide passphrase, please make sure you remember it."
read PASSPHRASE

$IDFIleNAME=$USERNAME"_id_rsa"
ssh-keygen -f ~/.ssh/$IDFIleNAME -t rsa -N "$PASSPHRASE";
echo -e '#'$USERNAME'\nHost '$USERNAME'\n\tHostName github.com\n\tIdentityFile ~/.ssh/'$IDFIleNAME>> ~/.ssh/config

# echo -e '#'$USERNAME'\nHost '$USERNAME'\n\tHostName 140.82.112.4\n\tIdentityFile ~/.ssh/'$IDFIleNAME>> ~/.ssh/sshd_config

sudo chmod 400 ~/.ssh/$IDFIleNAME
chmod go-w ~/.ssh/config

echo "Copy your public key and past it in your github account in your setting where it says SSH and GPG keys"
echo -e '\n'

cat ~/.ssh/$IDFIleNAME'.pub'
echo -e '\n'
echo "press enter key to continue "
read ANYKEY

eval "$(ssh-agent -s)"
pwd
echo "press enter key to continue "
read ANYKEY
ssh-add ~/.ssh/$IDFIleNAME
ssh -T git@github.com

cat ~/.ssh/config
echo "${IDFIleNAME}"
echo "press enter key to continue "
read ANYKEY

