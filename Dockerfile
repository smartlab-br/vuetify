FROM node:9.10.1-alpine

RUN apk add --no-cache bash git openssh

COPY requirements.txt /home/node

WORKDIR /home/node

RUN cat requirements.txt | xargs npm install -g
