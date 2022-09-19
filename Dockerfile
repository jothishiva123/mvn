FROM openjdk-11
WORKDIR /usr/src/app
COPY mynewapp/* /
RUN npm install
EXPOSE 8080
CMD [ "npm","start" ]
