FROM node:20-alpine

WORKDIR /app

# 直接克隆已经构建好的 PromptHub 网页
RUN apk add --no-cache git
RUN git clone https://github.com/legolasng/prompthub-web.git .

# 启动静态服务
RUN npm install -g serve
CMD ["serve", "-s", ".", "-l", "3000"]

EXPOSE 3000
