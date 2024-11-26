FROM node:16

# Définir le répertoire de travail
WORKDIR /usr/src/app

# Copier les fichiers nécessaires
COPY package*.json ./
RUN npm install
COPY . .

# Exposer le port 3000
EXPOSE 3000

# Commande pour démarrer l’application
CMD ["npm", "start"]
