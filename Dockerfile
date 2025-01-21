# Utilisation de l'image officielle de Node.js
FROM node:14

# Définir le répertoire de travail
WORKDIR /app

# Copier package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste des fichiers du projet
COPY . .

# Exposer le port utilisé par l'application
EXPOSE 3000

# Lancer l'application
CMD ["node", "app.js"]
