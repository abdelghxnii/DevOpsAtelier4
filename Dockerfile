FROM openjdk:8
EXPOSE 8080
ADD target/devopsatelier4-1.0-SNAPSHOT.jar devopsatelier4-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/devopsatelier4-1.0-SNAPSHOT.jar"]
