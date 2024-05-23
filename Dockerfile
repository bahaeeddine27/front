# Utiliser une image node comme base
FROM node:18

# Définir le répertoire de travail dans le conteneur
WORKDIR /front

# Copier le package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port de l'application
EXPOSE 3000

# Commande pour démarrer l'application en mode développement
CMD ["npm", "start"]
