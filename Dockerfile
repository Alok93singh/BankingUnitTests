FROM node:latest

WORKDIR /usr/src/app

COPY /var/lib/jenkins/workspace/first-pipeline/*.jar ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
