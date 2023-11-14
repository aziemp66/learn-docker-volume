FROM node:lts-alpine

# Path: /app
WORKDIR /app

# Path: /app/package.json
COPY package.json /app/

# run yarn install
RUN yarn 

COPY . /app/

ARG DEFAULT_PORT=80

ENV PORT=${DEFAULT_PORT}

EXPOSE $PORT

VOLUME [ "/app/node_modules" ]

VOLUME [ "/app/temp" ]

CMD ["yarn", "start"]





