FROM node:lts-alpine

# Path: /app
WORKDIR /app

# Path: /app/package.json
COPY package.json /app/

# run yarn install
RUN yarn 

COPY . /app/

VOLUME [ "/app/node_modules" ]

VOLUME [ "/app/temp" ]

EXPOSE 80

CMD ["yarn", "start"]





