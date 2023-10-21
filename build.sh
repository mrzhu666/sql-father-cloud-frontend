
# 清空文件夹
sudo rm -rf /var/www/sql-father-cloud/*
# 选择nodejs版本
nvm use 16
# 构建静态文件
npm run build
# 复制文件
sudo cp -r ./dist/. /var/www/sql-father-cloud