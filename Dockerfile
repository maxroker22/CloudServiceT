FROM openjdk:18-alpine3.13

EXPOSE 5050

ADD target/CloudServiceT-0.0.1-SNAPSHOT.jar diploma.jar

CMD ["java", "-jar", "diploma.jar"]