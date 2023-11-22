FROM ubuntu:latest
LABEL authors="G00410024@atu.ie"

ENTRYPOINT ["top", "-b"]

# Use a base image with Java and an apporopriate version
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/DockerExample-0.0.1-SNAPSHOT.jar /app

# Expose the port that the SPring Boot application will run on
EXPOSE 8080

# Command the run the application
CMD ["java", "-jar", "DockerExample-0.0.1-SNAPSHOT.jar"]