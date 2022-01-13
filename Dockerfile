FROM openjdk:8 
EXPOSE 8080 
ADD target/name_jar_genere.jar name_jar_genere.jar 
ENTRYPOINT ["java","-jar","/name_jar_genere.jar"]