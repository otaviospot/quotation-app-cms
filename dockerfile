# Usamos uma imagem Node.js como base
FROM node:14

# Criamos um diretório para a nossa aplicação
WORKDIR /usr/src/app

# Copiamos os arquivos package.json e package-lock.json
COPY package*.json ./

# Instalamos as dependências do projeto
RUN npm install

# Copiamos o restante dos arquivos da aplicação
COPY . .

# Expondo a porta que a aplicação irá utilizar (ajuste conforme necessário)
EXPOSE 8080

# Definimos o comando para rodar a aplicação
CMD [ "node", "server.js" ]
