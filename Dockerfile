# 使用 Node.js 18 的基礎映像檔
FROM node:18-alpine as base

# 設定工作目錄
WORKDIR /app

# 複製 package.json 與 package-lock.json 到工作目錄
COPY ["package.json", "package-lock.json*", "./"]

# 安裝相依套件
RUN npm install

# 複製所有檔案到工作目錄
COPY . .

# 定義埠號
ENV PORT=8080

# 暴露埠號
EXPOSE 8080

# 執行應用程式
CMD ["node", "main.js"]