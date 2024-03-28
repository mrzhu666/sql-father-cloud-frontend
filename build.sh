# linux本地快速部署脚本

echo `whoami`
echo -e "\e[38;5;1m 清空文件夹 \e[0m"
sudo rm -rf /var/www/sql-father-cloud/*
echo -e "\e[38;5;1m 构建静态文件 \e[0m"
npm run build
echo -e "\e[38;5;1m 复制文件 \e[0m"
sudo cp -r ./dist/. /var/www/sql-father-cloud