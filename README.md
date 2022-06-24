## This repo will install git, nginx, NodeJs and will generate ssh key for your github.

### run the following commands
```sh
curl -LJO -o nginxAutoSetup-main.zip "https://github.com/KidusTadesseCode/nginxAutoSetup/archive/refs/heads/main.zip"
unzip nginxAutoSetup-main.zip -d "./"
rm -rf nginxAutoSetup-main.zip
sh nginxAutoSetup-main/index.sh
```