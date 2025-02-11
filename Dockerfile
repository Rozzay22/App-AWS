# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51QrNYfP0iYN0BUtuF58yj0fqFcZyY7rLdZNiPGEg2HvMUj08oCNvJrRYRjvrGkPHARw5wYkKuU2dh58trBooJq0P00V22ezI2j" \
SECRET_KEY="sk_test_51QrNYfP0iYN0BUtuGGg2qgM6OCQzeUmPjq4hz2c3b9K0HtRdcNFaggAvGKMlXS8qf2XK6ExxXTqJwtOuJFkG2hL900TXrAQkJu"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
