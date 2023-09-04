FROM node:16.20.2-alpine

WORKDIR /app

COPY yarn.lock package.json .

RUN yarn install --frozen-lockfile

COPY src/index.js .

RUN node index.js
