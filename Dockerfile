# 编译项目
FROM node:18

WORKDIR /app

COPY . .
RUN npm install --registry=https://registry.npm.taobao.org
RUN npm run build

# docker部署nginx
FROM nginx

# 复制第一阶段编译后文件
COPY --from=0 /app/dist /var/www/sql-father-cloud/
#COPY dist/ /var/www/sql-father-cloud/
COPY sql-father-cloud.conf  /etc/nginx/conf.d/sql-father-cloud.conf
RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80
