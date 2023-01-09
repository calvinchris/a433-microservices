#Pull image node js versi 14
FROM node:14-alpine

#Perintah untuk mengatur working directory
WORKDIR /app

#Perintah untuk menyalin setiap file dari direktori host ke direktori container
COPY . .

#Menentukan envinronment variable container
ENV NODE_ENV=production DB_HOST=item-db

#Menjalankan perintah untuk mengginstall mode production
RUN npm install --production --unsafe-perm && npm run build

#Menentukan Port dari aplikasi
EXPOSE 8080

#Menjalankan perintah npm start saat container di deploy
CMD ["npm", "start"]