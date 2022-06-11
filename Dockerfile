FROM node:latest

WORKDIR /usr/src/app

COPY /var/lib/jenkins/workspace/first-pipeline/ ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
