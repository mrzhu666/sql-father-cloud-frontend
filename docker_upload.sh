# 上传镜像到本地仓库

# 运行本地仓库
docker run -d -p 5000:5000 --restart=always --name registry registry

docker stop sql-father-nginx
docker rm sql-father-nginx
docker rmi -f sql-father-nginx
docker stop 127.0.0.1:5000/sql-father-nginx
docker rm 127.0.0.1:5000/sql-father-nginx
docker rmi -f 127.0.0.1:5000/sql-father-nginx

docker build -t sql-father-nginx .
docker tag sql-father-nginx:latest 127.0.0.1:5000/sql-father-nginx:latest
# 上传到本地仓库
docker push 127.0.0.1:5000/sql-father-nginx:latest


