# Usa una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo package.json y el package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación al directorio de trabajo
COPY . .

# Compila la aplicación
RUN npm run build

# Expone el puerto que utiliza la aplicación
EXPOSE 3000

# Inicia la aplicación
CMD ["npm", "run", "start:prod"]
