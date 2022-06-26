function nginx_goLive(){
    echo "What is your site name?"
    read SITE
    sudo mkdir ~/../../usr/share/nginx/html/$SITE
    sudo chown -R $USER:$USER ~/../../usr/share/nginx/html/$SITE
    echo -e "[nginx] \n name=nginx repo \n baseurl=https://nginx.org/packages/mainline/centos/7/$basearch/ \n gpgcheck=0 \n enabled=1" > /etc/yum.repos.d/nginx.repo
    sudo rm -rf ~/../../usr/share/nginx/html/icons 404.html  50x.html  icons  index.html  nginx-logo.png  poweredby.png
    return
}

