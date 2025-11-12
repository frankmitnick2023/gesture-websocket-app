# Dockerfile
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制 package 文件
COPY package*.json ./

# 安装依赖
RUN npm ci --only=production

# 复制所有文件
COPY . .

# 暴露端口
EXPOSE 8080

# 启动命令
CMD ["npm", "start"]
