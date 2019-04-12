FROM node:10.15.3-alpine

RUN apk add --no-cache bash git openssh

RUN mkdir /home/node/base

COPY package.json /home/node/base

WORKDIR /home/node/base

RUN npm install -G
