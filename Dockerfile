# Dockerfile
FROM node:18-alpine

WORKDIR /app

# 复制 package 文件
COPY package*.json ./

# 安装依赖（现在有 lockfile 了，可以用 npm ci）
RUN npm ci --only=production

# 复制所有源码
COPY . .

# 暴露端口
EXPOSE 8080

# 启动
CMD ["npm", "start"]
