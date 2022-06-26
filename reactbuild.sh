function reactbuild(){
    cd
    cd DIRNAME
    npm run build
    sudo cp -r build/*  ~/../../usr/share/nginx/html/$SITE
}