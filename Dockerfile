FROM node:20-alpine

WORKDIR /app

COPY . .

# 只安装依赖，不编译，直接启动
RUN npm install

EXPOSE 3000

# 直接运行，不 build！
CMD ["npm", "start"]
