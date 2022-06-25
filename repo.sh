# echo "Whats the repo ssl link?"
# read REPOLINK

# while [ -z $REPOLINK ]
# do
#    echo "Whats the repo ssl link?"
#    read REPOLINK
# done


# eval "$(ssh-agent -s)"
# cd 
# git clone REPOLINK

mkdir ~/repo
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/$IDFIleNAME
git clone git@github.com:KidusTadesseCode/navigation.git ~/repo

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
