FROM node:17.2.0-alpine3.14

RUN apk update \
 && apk upgrade \
 && apk add git

ENV APPDIR /app
RUN mkdir -p $APPDIR \
 && chown node:node $APPDIR
WORKDIR $APPDIR

USER node

ADD --chown=node:node package.json package-lock.json ./
RUN npm install
