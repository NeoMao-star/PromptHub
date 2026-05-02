# 最稳定方案：直接用静态服务跑 PromptHub 网页版
FROM node:20-alpine

WORKDIR /app

# 复制整个项目
COPY . .

# 全局安装静态服务器（绝对不报错）
RUN npm install -g serve

# 直接用 web 产物启动
CMD ["serve", "-s", "apps/web/dist", "-l", "3000"]

EXPOSE 3000
