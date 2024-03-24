FROM node:latest

# Instalar git
RUN apt-get update && \
    apt-get install -y git

WORKDIR /app

# Copiar archivos package.json y package-lock.json
COPY package.json package-lock.json ./

# Instalar dependencias npm
RUN npm install

# Copiar el resto de los archivos
COPY . .

# Exponer el puerto 4321
EXPOSE 4321

# Comando para clonar el repositorio de Git (actualiza con tu repositorio)
#RUN git clone https://github.com/tu_usuario/tu_repositorio.git

# Comando para iniciar el servidor de desarrollo de Astro
CMD ["npm", "install"]
CMD ["npm", "run", "dev"]

