FROM openjdk:8
ADD build/libs/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]