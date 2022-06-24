CURRENT=$(ls -td -- * | head -n 1)
$CURRENT=CURRENT%.*
echo "Do you wish to install git?"
select GIT in "Yes" "No"; do
    case $GIT in
        Yes )sh ~/$CURRENT/git.sh; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done

echo "Do you wish to install nodejs?"
select NODEJS in "Yes" "No"; do
    case $NODEJS in
        Yes )sh ~/$CURRENT/node.sh; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done

echo "Would you like me to help you setup ssh keys so you can connect to github?"
select SSLGITHUB in "Yes" "No"; do
    case $SSLGITHUB in
        Yes )sh ~/$CURRENT/ssh_github.sh; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done


echo "Do you wish to clone a repo? Inorder to use this feuter your ec2 must be connected"
select REPO in "Yes" "No"; do
    case $REPO in
        Yes )sh ~/$CURRENT/repo.sh; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done


echo "Do you wish to install nginx? To use this feture you must have a build file"
select NGINX in "Yes" "No"; do
    case $NGINX in
        Yes )sh ~/$CURRENT/nginx.sh; break;;
        No ) break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done