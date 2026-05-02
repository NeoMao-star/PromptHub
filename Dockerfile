FROM node:20-alpine

WORKDIR /app

# 安装静态服务
RUN npm install -g serve

# 复制项目
COPY . .

# 关键：直接运行 web 项目源码（能正常显示页面）
CMD ["serve", "-s", "apps/web/src", "-l", "3000"]

EXPOSE 3000
