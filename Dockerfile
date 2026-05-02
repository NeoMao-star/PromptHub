FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm install -g serve
CMD ["serve", "-s", "apps/web", "-l", "3000"]
EXPOSE 3000
