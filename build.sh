# 快速部署脚本

echo `whoami`
# 清空文件夹
sudo rm -rf /var/www/sql-father-cloud/*
# 构建静态文件
npm run build
# 复制文件
sudo cp -r ./dist/. /var/www/sql-father-cloud