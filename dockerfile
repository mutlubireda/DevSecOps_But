# Kullanılacak temel image
FROM node:14

# Çalışma dizini
WORKDIR /usr/src/app

# Uygulama bağımlılıklarını kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Uygulama kaynak kodunu kopyala
COPY . .

# Uygulamanın çalışacağı port
EXPOSE 3000

# Uygulamayı başlat
CMD [ "node", "server.js" ]
