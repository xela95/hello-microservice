# Use Java 17 runtime
FROM eclipse-temurin:17-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY build/libs/*.jar app.jar

# Expose port 8080 (Spring Boot runs here)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]