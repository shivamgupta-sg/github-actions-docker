FROM node:lts-alpine3.13

WORKDIR /home/node/node-hello

ADD package.json .

RUN npm install

USER node

ADD --chown=node:node . .

CMD [ "npm", "start" ]

EXPOSE 3000
EXPOSE 3001
