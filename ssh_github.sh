echo 'What would you like this ssl keys to be called? You can use your username or anything.'
read USERNAME

echo "Passphrase for the key? This is optional and to skip press enter 
If you provide passphrase, please make sure you remember it."
read PASSPHRASE

IDFIleNAME=$USERNAME"_id_rsa"
ssh-keygen -f ~/.ssh/$IDFIleNAME -t rsa -N "$PASSPHRASE";
sudo chmod 400 ~/.ssh/$IDFIleNAME

eval "$(ssh-agent)"
ssh-add ~/.ssh/$IDFIleNAME

echo "
#$USERNAME
Host $USERNAME
    HostName github.com
    IdentityFile ~/.ssh/$IDFIleNAME
">> ~/.ssh/config

cat ~/.ssh/config



echo "copy your public key and past it in your github account in your setting where it says SSH and GPG keys"
echo "
"
cat ~/.ssh/$IDFIleNAME'.pub'
echo "
"
echo press any key to \continue 
read ANYKEY