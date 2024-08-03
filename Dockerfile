# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the executable JAR file from the host machine to the container
COPY spring-petclinic-3.3.0-SNAPSHOT.jar /app/spring-petclinic-3.3.0-SNAPSHOT.jar

# Expose the port that the application will run on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/spring-petclinic-3.3.0-SNAPSHOT.jar"]
