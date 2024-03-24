FROM node:21-alpine

RUN apk update &&\
    apk upgrade

RUN mkdir /app
WORKDIR /app

COPY package*.json ./
COPY . .

RUN npm install

CMD ["npx","expo"]
