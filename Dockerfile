FROM node:latest

WORKDIR /usr/src/app

ADD *.jar ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
