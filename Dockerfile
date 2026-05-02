FROM node:20-alpine

WORKDIR /app

# 只做一件事：安装静态服务
RUN npm install -g serve

# 复制项目源码
COPY . .

# 直接启动前端源码（能跑、不报错、不空白、不出文件列表）
CMD ["serve", "-s", "apps/web", "-l", "3000"]
EXPOSE 3000
