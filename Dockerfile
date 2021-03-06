# Use official base image of Java Runtim
FROM adoptopenjdk/openjdk11:alpine-jre

# Set volume point to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside container
EXPOSE 8006

# Set application's JAR file
ARG JAR_FILE=target/configuration-service-0.2.0.jar

# Add the application's JAR file to the container
ADD ${JAR_FILE} app.jar

# Run the JAR file
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
