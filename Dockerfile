FROM node:latest

WORKDIR /usr/src/app

ADD https://aloktest.jfrog.io/artifactory/java-developer-libs-snapshot/vs/BankingApplication/1.2.${v}-SNAPSHOT/*.jar ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
