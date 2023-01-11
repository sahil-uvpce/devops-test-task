# Maven build container 

FROM maven:latest AS maven_build

COPY pom.xml /tmp/

COPY src /tmp/src/

WORKDIR /tmp/

RUN mvn clean install

#pull base image

FROM openjdk

#expose port 8080
EXPOSE 8080

#default command
CMD java -jar /data/hello-world-0.1.0.jar

#copy hello world to docker image from builder image

COPY --from=maven_build /tmp/target/docker-demo-0.0.1-SNAPSHOT.jar /data/hello-world-0.1.0.jar