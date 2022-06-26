#!/bin/sh
function git_Repo(){
while [ -z $REPOLINK ]
do
    echo "Whats the repo ssl link?"
    read REPOLINK
done


#git clone $REPOLINK ./ 
git clone git@github.com:KidusTadesseCode/navigation.git ~/repo
echo "git@github.com:KidusTadesseCode/navigation.git"

# echo $REPOLINK
return
# export FOLDERNAME
# export DIRNAME
}
# REPO_LINK=$(git_Repo)