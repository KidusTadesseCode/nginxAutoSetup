curl -LJO -o nginxAutoSetup-main.zip "https://github.com/KidusTadesseCode/nginxAutoSetup/archive/refs/heads/main.zip"
unzip nginxAutoSetup-main.zip -d "./"
cd nginxAutoSetup-main
sh index.sh
rm -rf nginxAutoSetup-main.zip