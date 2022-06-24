sudo yum install nginx
sudo nginx -v
#sudo yum update

echo "What is your site name?"
read SITE
sudo mkdir ~/../../usr/share/nginx/html/$SITE
sudo chown -R $USER:$USER ~/../../usr/share/nginx/html/$SITE

echo "[nginx] \n name=nginx repo \n baseurl=https://nginx.org/packages/mainline/centos/7/$basearch/ \n gpgcheck=0 \n enabled=1" > /etc/yum.repos.d/nginx.repo
sudo rm -rf ~/../../usr/share/nginx/html/icons
sudo rm ~/../../usr/share/nginx/html/404.html  50x.html  icons  index.html  nginx-logo.png  poweredby.png
sudo chown -R $USER:$USER ~/../../usr/share/nginx/html/$SITE

export FOLDERNAME
export DIRNAME
export SITE

echo "is this a React or Node Backend App?"
select APPTYPE in "React" "Node Backend App"; do
    case $APPTYPE in
        React ) sh reactbuild.sh; break;;
        Node Backend App ) sudo cp -r ~/DIRNAME/*  ~/../../usr/share/nginx/html/$SITE; break;;
        *) echo "Invalid entry. Please type 1 for yes or type 2 for no."
    esac
done

sh nginx.conf.sh

sudo service nginx stop
sudo service nginx start
