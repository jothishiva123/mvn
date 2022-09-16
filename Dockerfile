FROM openjdk11

WORKDIR /usr/src/app

COPY package*.json ./

RUN jenkins install

COPY . .

EXPOSE 8080
CMD [ "openjdk11", "devops.jar" ]
