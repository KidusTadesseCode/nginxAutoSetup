#!/bin/sh
function display_public_key(){
    echo "Copy your public key and past it in your github account in your setting where it says SSH and GPG keys"
    echo -e '\n'
    sudo cat ~/.ssh/$1'.pub'
    echo -e '\n'
    echo "press enter key to continue "
    read ANYKEY
    return
}
function ssh_git(){
    echo 'What would you like this ssl keys to be called? You can use your username or anything.'
    read USERNAME

    echo "Passphrase for the key? This is optional and to skip press enter 
    If you provide passphrase, please make sure you remember it."
    read PASSPHRASE

    IDFIleNAME=$USERNAME'_id_rsa'
    ssh-keygen -f ~/.ssh/$IDFIleNAME -t rsa -N "$PASSPHRASE";
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/$IDFIleNAME
    # echo -e '#'$USERNAME'\nHost '$USERNAME'\n\tHostName github.com\n\tIdentityFile ~/.ssh/'$IDFIleNAME>> ~/.ssh/config

    display_public_key "$IDFIleNAME"

    sudo chmod 400 ~/.ssh/$IDFIleNAME
    # chmod go-w ~/.ssh/config

    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/$IDFIleNAME
    ssh -T git@github.com
    return
}