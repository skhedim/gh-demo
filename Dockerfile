FROM node:10.16.0-alpine

WORKDIR /source/gh-demo

COPY package.json /source/gh-demo

RUN cd /source/gh-demo && npm i --only=production

COPY . .

EXPOSE 3000
CMD ["sh", "-c", "node server.js"]