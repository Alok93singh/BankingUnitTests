FROM node:latest

WORKDIR /usr/src/app

ADD /tmp/artifact/*.jar ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
