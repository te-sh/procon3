FROM node:18.7.0-alpine3.16

RUN apk update \
 && apk upgrade \
 && apk add git python3 py3-pip build-base \
 && npm install -g npm gatsby-cli

ENV APPDIR /app
RUN mkdir -p $APPDIR \
 && chown node:node $APPDIR
WORKDIR $APPDIR

USER node

ADD --chown=node:node package.json package-lock.json ./
RUN npm install
