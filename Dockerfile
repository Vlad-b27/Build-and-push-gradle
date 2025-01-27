FROM openjdk:19-jdk-alpine

WORKDIR /app

# Copy the Spring Boot JAR file from the Gradle build
COPY build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
