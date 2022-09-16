FROM openjdk11
COPY .  /src/java
WORKDIR /src/java
RUN ["javac","devops.jar"]
ENTRYPOINT ["java","devops.jar"]
