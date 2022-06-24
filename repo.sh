# echo "Whats the repo ssl link?"
# read REPOLINK

while [ -z $REPOLINK ]
do
   echo "Whats the repo ssl link?"
   read REPOLINK
done



cd ~/
git clone REPOLINK
ls 
FILEPROJECT=$(ls -td -- * | head -n 1)

cd FILEPROJECT/
npm i

FOLDERNAME=${PWD##*/}
DIRNAME==$(pwd)

export FOLDERNAME
export DIRNAME