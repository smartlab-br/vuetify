FROM node:9.10.1-alpine

RUN apk add --no-cache bash git openssh

RUN mkdir /home/node/app

COPY package.json /home/node/app

WORKDIR /home/node/app

RUN npm install

RUN ls -la node_modules
