FROM openjdk-11
COPY target/*.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","mynewapp-1.0-SNAPSHOT.jar"]
