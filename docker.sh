docker stop sql-father-nginx
docker rm sql-father-nginx
docker rmi -f sql-father-nginx

docker build -t sql-father-nginx .
docker run -d -p 80:80 --name sql-father-nginx sql-father-nginx