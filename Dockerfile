FROM openjdk:11
COPY target/*.jar /
EXPOSE 8080
ADD target/devops.jar devops.jar
ENTRYPOINT ["java","jar","devops.jar"]
