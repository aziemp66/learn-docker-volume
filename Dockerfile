FROM node:lts-alpine

# Path: /app
WORKDIR /app

# Path: /app/package.json
COPY package.json yarn.lock* /app/

# run yarn install
RUN yarn install 

COPY . /app/

VOLUME [ "/app/node_modules" ]

EXPOSE 80

CMD ["yarn", "start"]





