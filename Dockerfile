FROM node:20-alpine

WORKDIR /app

# 安装静态文件服务（绝对不会报错）
RUN npm install -g serve

# 复制整个项目
COPY . .

# 直接启动静态页面（不构建、不编译、不依赖pnpm）
CMD ["serve", "-s", "apps/web/public", "-l", "3000"]

EXPOSE 3000
