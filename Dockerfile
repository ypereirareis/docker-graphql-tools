FROM node:8.5.0-alpine

MAINTAINER Yannick Pereira-Reis <yannick.pereira.reis@gmail.com>

RUN npm install -g \
    graphql-cli \
    @2fd/graphdoc

WORKDIR /app
VOLUME /app
