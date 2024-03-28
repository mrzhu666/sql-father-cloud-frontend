
docker rm 100.98.39.90:5000/sql-father-nginx
docker rmi -f 100.98.39.90:5000/sql-father-nginx

# 拉取
docker pull 100.98.39.90:5000/sql-father-nginx:latest

# 运行
docker run -d -p 80:80 100.98.39.90:5000/sql-father-nginx