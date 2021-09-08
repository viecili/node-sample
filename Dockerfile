FROM quay.io/app-sre/ubi8-nodejs-14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "node", "./bin/www" ]