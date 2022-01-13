FROM openjdk:8
EXPOSE 8080
ADD target/my-app-1.0-SNAPSHOT.jar my-app-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/name_jar_généré.jar"]
