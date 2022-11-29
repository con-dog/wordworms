FROM node:19.1 AS base

WORKDIR /client/app

COPY app/*.js app/*.ts app/*.json  ./

#
#

FROM base AS dev

RUN npm install

CMD ["tail", "-F", "anything"]

#
#

FROM base AS prod

RUN npm install --only=production

COPY app/ .

CMD ["tail", "-F", "anything"]
