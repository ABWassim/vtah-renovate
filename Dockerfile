FROM node:20.5.1-alpine

WORKDIR /app

COPY yarn.lock package.json .

RUN yarn install --frozen-lockfile

COPY src/index.js .

RUN node index.js
