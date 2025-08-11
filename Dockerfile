# 使用官方 Node.js 镜像（支持 ES modules）
FROM node:18-alpine

# 设置工作目录
WORKDIR /app/adarkroom

# 复制 package.json
COPY package.json ./

# 安装依赖
RUN npm install

# 复制所有项目文件
COPY . .

# 暴露端口（与 dev-server.js 一致）
EXPOSE 8080

# 启动服务（使用 npm start，对应 package.json 中的脚本）
CMD ["npm", "start"]