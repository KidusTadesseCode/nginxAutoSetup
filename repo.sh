# echo "Whats the repo ssl link?"
# read REPOLINK

# while [ -z $REPOLINK ]
# do
#    echo "Whats the repo ssl link?"
#    read REPOLINK
# done



cd 
# git clone REPOLINK
git clone git@github.com:KidusTadesseCode/navigation.git
ls 
FILEPROJECT=$(ls -td -- * | head -n 1)

#cd FILEPROJECT/
cd ~/navigation
npm i

FOLDERNAME=${PWD##*/}
DIRNAME==$(pwd)

export FOLDERNAME
export DIRNAME
