#!/bin/sh
source ./urlPacer.sh

function git_Repo(){
while [ -z $REPOLINK ]
do
    echo "Whats the repo ssl link?"
    read REPOLINK
done

#ssh-add ~/.ssh/try_id_rsa
#git clone $REPOLINK ./ 
git clone $REPOLINK ~/repo
REPOEDFileName=$(parcer "$REPOLINK")
echo $REPOEDFileName
return
}