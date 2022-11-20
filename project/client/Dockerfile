FROM node:19.1 AS base

WORKDIR /client/app

COPY --chown=node:node app/*.js app/*.json  ./

#
#

FROM base AS dev

RUN npm ci

USER node

CMD ["tail", "-F", "anything"]

#
#

FROM base AS prod

RUN npm ci --only=production

USER node

COPY app/ .

CMD ["tail", "-F", "anything"]
