FROM openjdk:17-jdk-slim

# Install curl
RUN apt-get update && apt-get install -y curl

ARG JAR_FILE=/build/libs/*.jar

COPY ${JAR_FILE} /app.jar

ENTRYPOINT ["java","-jar","/app.jar"]