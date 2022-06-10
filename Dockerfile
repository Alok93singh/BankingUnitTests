FROM node:latest

WORKDIR /usr/src/app

COPY https://aloktest.jfrog.io/artifactory/java-developer-libs-snapshot/vs/BankingApplication/1.2.20-SNAPSHOT/BankingApplication-1.2.20-20220610.065207-1.jar ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
