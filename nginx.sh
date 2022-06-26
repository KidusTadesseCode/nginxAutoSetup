function nginx_Install(){
    sudo yum install nginx
    sudo nginx -v
}

function nginx_goLive(){
    echo "What is your site name?"
    read SITE
    sudo mkdir ~/../../usr/share/nginx/html/$SITE
    sudo chown -R $USER:$USER ~/../../usr/share/nginx/html/$SITE
    echo -e "[nginx] \n name=nginx repo \n baseurl=https://nginx.org/packages/mainline/centos/7/$basearch/ \n gpgcheck=0 \n enabled=1" > /etc/yum.repos.d/nginx.repo
    sudo rm -rf ~/../../usr/share/nginx/html/icons 404.html  50x.html  icons  index.html  nginx-logo.png  poweredby.png
}


# export FOLDERNAME
# export DIRNAME
# export SITE

function nginx_builder(){
    echo "is this a React or Node Backend App?"
    select APPTYPE in "React" "Node-Backend-App"; do
        case $APPTYPE in
            React ) sh reactbuild.sh; break;;
            Node-Backend-App ) sudo cp -r ~/DIRNAME/*  ~/../../usr/share/nginx/html/$SITE; break;;
            *) echo "Invalid entry. Please type 1 for React or type 2 for Node-Backend-App followed my Enter."
        esac
    done

    sh nginx.conf.sh

    sudo service nginx stop
    sudo service nginx start
}
