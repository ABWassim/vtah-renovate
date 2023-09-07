FROM node:16.20.2-alpine

WORKDIR /app

COPY yarn.lock package.json ./

RUN yarn install --frozen-lockfile --prod

COPY src/index.js .

CMD [ "node", "index.js" ]