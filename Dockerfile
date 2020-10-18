FROM node:lts-alpine3.9

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install 

COPY . .

EXPOSE 9000

CMD [ "node", "app.js" ]