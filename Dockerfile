FROM openjdk11
 
RUN apt-get update && \
    apt-get install -y jenkins\
    LABEL maintainer=”any”
LABEL version=”1.0”
LABEL description=”devops.jar”
 
EXPOSE 80/tcp
 
CMD [“devops.jar”, “-g”, ‘daemon off;’]
