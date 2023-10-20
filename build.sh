
# 清空文件夹
sudo rm -rf /var/www/sql-father-cloud/*
# 构建静态文件
npm run build
# 复制文件
cp ./dist/. /var/www/sql-father-cloud