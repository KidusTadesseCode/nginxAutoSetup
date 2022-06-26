# echo -e "[nginx] \n name=nginx repo \n baseurl=https://nginx.org/packages/mainline/centos/7/$basearch/ \n gpgcheck=0 \n enabled=1" > ./testMe.txt
function parcer(){
    local url="git@github.com:KidusTadesseCode/navigation.git"
    # echo $url
    local pathurl="$(echo $url | grep / | cut -d/ -f2-)"
    # echo $pathurl
    local path=${pathurl%.*}
    echo $path
    return
}