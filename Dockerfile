FROM openjdk11
 
RUN apt-get update && \
    apt-get install -y jenkins\
    LABEL maintainer=”any”
LABEL version=”1.0”
LABEL description=”A simple image running jenkkins on openjdk-11”
 
EXPOSE 80/tcp
 
CMD [“devops.jar”, “-g”, ‘daemon off;’]
