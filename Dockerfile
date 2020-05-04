FROM node:12-alpine 

EXPOSE 8080

RUN mkdir /home/node/app/ && chown -R node:node /home/node/app
WORKDIR /home/node/app

COPY --chown=node:node package*.json ./

USER node

RUN npm install --only=prod

COPY --chown=node:node index.js .

CMD [ "node", "index.js"]
