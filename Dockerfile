# Dockerfile
FROM node:18-alpine

WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package.json package-lock.json ./

# 安装生产依赖
RUN npm ci --omit=dev

# 复制所有文件
COPY . .

EXPOSE 8080
CMD ["npm", "start"]
