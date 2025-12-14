# 1. Dùng bản Alpine cho nhẹ (Docker Tối Ưu)
FROM node:18-alpine

# 2. Thiết lập thư mục làm việc
WORKDIR /app

# 3. Kỹ thuật Caching: Copy file package trước để cài thư viện
COPY package*.json ./

# 4. Cài thư viện (chỉ cài dependencies chính)
RUN npm install --production

# 5. Copy toàn bộ code còn lại vào
COPY . .

# 6. Mở cổng
EXPOSE 3000

# 7. Chạy server
CMD ["npm", "start"]