echo "Whats the repo ssl link?"
read REPOLINK

cd 
git clone REPOLINK
ls 
FILEPROJECT=$(ls -td -- * | head -n 1)

cd FILEPROJECT/
npm i

FOLDERNAME=${PWD##*/}
DIRNAME==$(pwd)

export FOLDERNAME
export DIRNAME