FROM openjdk:8
EXPOSE 8080
ADD target/DevOpsAtelier4-1.0-SNAPSHOT.jar DevOpsAtelier4-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/DevOpsAtelier4-1.0-SNAPSHOT.jar"]
