FROM quay.io/app-sre/ubi8-nodejs-14

# WORKDIR /usr/src/app
# RUN chown 1001 /usr/src/app \
#     && chmod "g+rwX" /usr/src/app \
#     && chown 1001:root /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

# USER 1001

CMD [ "node", "./bin/www" ]