FROM quay.io/app-sre/ubi8-nodejs-14

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "node", "./bin/www" ]