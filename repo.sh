#!/bin/sh
function gitRepo(){
while [ -z $REPOLINK ]
do
    echo "Whats the repo ssl link?"
    read REPOLINK
done


# eval "$(ssh-agent -s)"
# cd 
# git clone REPOLINK

# eval `grep "^export " ../ssh_github.sh`

mkdir ~/repo
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/$IDFIleNAME
echo "from repo -- ${IDFIleNAME}"
git clone $REPOLINK ~/repo

# ssh-add ~/.ssh/try_id_rsa
# git clone git@github.com:KidusTadesseCode/navigation.git ~/repo

eval "$(pwd)"

eval "$(ls ~/)"

echo "press enter key to continue "
read ANYKEY


# FILEPROJECT=$(ls -td -- * | head -n 1)

#cd FILEPROJECT/
# pwd
# cd ~/navigation
# npm i

# FOLDERNAME=${PWD##*/}
# DIRNAME==$(pwd)

# export FOLDERNAME
# export DIRNAME
}