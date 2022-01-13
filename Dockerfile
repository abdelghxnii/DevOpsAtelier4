FROM openjdk:8
EXPOSE 8080
ADD target/name_jar_généré.jar name_jar_généré.jar
ENTRYPOINT ["java","-jar","/name_jar_généré.jar"]
