echo 'What would you like this ssl keys to be called? You can use your username or anything.'
read USERNAME

echo "Passphrase for the key? This is optional and to skip press enter 
If you provide passphrase, please make sure you remember it."
read PASSPHRASE

if  

IDFIleNAME=$USERNAME"_id_rsa"

if [ -z "$PASSPHRASE" ]
then
    ssh-keygen -f ~/.ssh/$IDFIleNAME -t rsa
else
    ssh-keygen -f ~/.ssh/$IDFIleNAME -t rsa -N "$PASSPHRASE";
fi

sudo chmod 400 ~/.ssh/$IDFIleNAME
echo \#$USERNAME "
Host $USERNAME
\t HostName github.com
\t IdentityFile ~/.ssh/'$IDFIleNAME'
">>config
echo "copy your public key and past it in your github account in your setting where it says SSH and GPG keys"
echo "\n"
cat ~/.ssh/$IDFIleNAME'.pub'
echo "\n"
echo press any key to \continue 
read ANYKEY
