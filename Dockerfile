ARG NODE_VERSION=20.11.0

FROM node:${NODE_VERSION}-alpine

ENV NODE_ENV production
ENV PORT 7000
ENV HOST http://127.0.0.1

WORKDIR /usr/src/app

RUN --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=yarn.lock,target=yarn.lock \
    --mount=type=cache,target=/root/.yarn \
    yarn install --production --frozen-lockfile

COPY . .

EXPOSE 7000

VOLUME /usr/src/app/public

CMD yarn start
