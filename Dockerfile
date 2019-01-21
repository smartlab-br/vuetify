FROM node:9.10.1-alpine

RUN apk add --no-cache bash git openssh

COPY package.json /home/node

WORKDIR /home/node

RUN npm install -g 
