FROM node:20-alpine

WORKDIR /app

# 安装pnpm
RUN npm install -g pnpm

# 复制整个项目
COPY . .

# 安装依赖并构建web端（官方命令）
RUN pnpm install --no-frozen-lockfile
RUN pnpm build:web

# 启动完整服务
CMD ["pnpm", "start:web"]

EXPOSE 3000
