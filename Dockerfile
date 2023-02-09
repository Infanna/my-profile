FROM node:19.6.0-alpine3.16 AS builder

WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

RUN yarn start