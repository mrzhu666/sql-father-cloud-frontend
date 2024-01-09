# docker部署nginx
FROM nginx

COPY dist/ /var/www/sql-father-cloud/
COPY sql-father-cloud.conf  /etc/nginx/conf.d/sql-father-cloud.conf
RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80
