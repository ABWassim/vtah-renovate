FROM node:16.17.0-alpine

WORKDIR /app

COPY yarn.lock package.json ./

RUN yarn install --frozen-lockfile --prod

COPY src/index.js .

CMD [ "node", "index.js" ]