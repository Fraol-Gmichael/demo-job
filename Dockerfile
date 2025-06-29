FROM eclipse-temurin:17-jre-alpine

LABEL authors="Fraol-Gmichael"

# Set timezone
ENV TZ=Africa/Nairobi

# Define constants
ARG APP_JAR=/target/*.jar
ENV APP_HOME=/app

# Set timezone and working directory
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR ${APP_HOME}

# Expose the application port
EXPOSE 8080

# Copy application resources and JAR file
COPY ${APP_JAR} ${APP_HOME}/service.jar
COPY /src/main/resources/* ${APP_HOME}/

# Start the application
ENTRYPOINT ["java", "-jar", "/app/service.jar"]