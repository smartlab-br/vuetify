FROM node:9.10.1-alpine

RUN apk add --no-cache bash git openssh

RUN MKDIR /home/node/app

COPY requirements.txt /home/node/app

WORKDIR /home/node/app

RUN cat requirements.txt | xargs npm install -g

RUN ls -la node_modules
