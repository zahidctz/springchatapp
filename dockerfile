#start with base image
FROM openjdk:11

#add maintainer
MAINTAINER John Cena <john@gmail.com>

#add a volume /tmp
VOLUME /tmp

#expose this application
EXPOSE 8080

#we will provide the jar file as argument
ARG JAR_FILE=target/websocket-demo-0.0.1-SNAPSHOT.jar

#Add the application or jar file inside my container
ADD ${JAR_FILE} websocket-demo.jar

#Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/websocket-demo.jar"]
