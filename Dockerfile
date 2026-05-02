# 这是 legeling/PromptHub 官方专用 Dockerfile
FROM node:20-alpine

# 安装 pnpm（项目强制要求）
RUN npm install -g pnpm

WORKDIR /app

# 复制项目全部文件
COPY . .

# 安装依赖
RUN pnpm install

# 构建网页版
RUN pnpm build:web

# 启动网页版（官方命令）
CMD ["pnpm", "start:web"]

EXPOSE 3000
