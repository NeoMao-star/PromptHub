# 官方专用 ！！！适用于 legeling/PromptHub web 版
FROM node:20-alpine

WORKDIR /app

# 复制项目
COPY . .

# 直接用项目自带的命令（官方已处理所有依赖）
RUN npm install -g pnpm
RUN pnpm install --frozen-lockfile
RUN pnpm build:web

EXPOSE 3000

CMD ["pnpm", "start:web"]
