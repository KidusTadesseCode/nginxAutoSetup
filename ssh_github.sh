echo 'What would you like this ssl keys to be called? You can use your username or anything.'
read USERNAME

echo "Passphrase for the key? This is optional and to skip press enter 
If you provide passphrase, please make sure you remember it."
read PASSPHRASE

IDFIleNAME=$USERNAME"_id_rsa"
ssh-keygen -f ~/.ssh/$IDFIleNAME -t rsa -N "$PASSPHRASE";

sudo chmod 400 ~/.ssh/$IDFIleNAME
# echo -e '#'$USERNAME'\nHost '$USERNAME'\n\tHostName github.com\n\tIdentityFile ~/.ssh/'$IDFIleNAME>> ~/.ssh/config



echo "Copy your public key and past it in your github account in your setting where it says SSH and GPG keys"
echo -e '\n'
cat ~/.ssh/$IDFIleNAME'.pub'
echo -e '\n'
echo "press enter key to continue "
read ANYKEY

chmod go-w ~/.ssh/config
eval `sudo ssh-agent -s`
sudo ssh-add ~/.ssh/$IDFIleNAME
cat ~/.ssh/config

ssh git@github.com -y