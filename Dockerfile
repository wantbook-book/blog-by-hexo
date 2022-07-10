# docker run -dp 4000:4000 -w /app -v "$(pwd):/app" img
ARG NODE_VERSION=16.16.0
FROM node:16.16.0
WORKDIR /app
# 更新系统
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
# RUN apk update && apk upgrade
# # 安装git、nano
# RUN apk add git nano
# COPY package.json ./
COPY . /app
# RUN rm package-lock.json
RUN npm config set registry http://registry.npm.taobao.org/
RUN npm install
RUN chmod a+x start.sh
EXPOSE 4000
ENTRYPOINT ["./start.sh"]
