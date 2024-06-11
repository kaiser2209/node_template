# Use uma imagem base com Node.js
FROM node:18-alpine

# Instale o Yarn globalmente
RUN npm install -g yarn

# Defina o diretório de trabalho no contêiner
WORKDIR /app

# Copie o package.json e o yarn.lock
COPY package.json yarn.lock ./

# Instale as dependências do projeto
RUN yarn install

# Copie o restante dos arquivos do projeto
COPY . .

# Compile o TypeScript para JavaScript
RUN yarn build

# Exponha a porta em que a aplicação vai rodar
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["yarn", "start"]