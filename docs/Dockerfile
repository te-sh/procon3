FROM node:17.3.0-alpine3.15

RUN apk update \
 && apk upgrade \
 && apk add git \
 && npm install -g npm gatsby-cli

ENV APPDIR /app
RUN mkdir -p $APPDIR \
 && chown node:node $APPDIR
WORKDIR $APPDIR

USER node

ADD --chown=node:node package.json package-lock.json ./
RUN npm install
