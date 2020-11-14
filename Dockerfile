FROM openjdk:8
WORKDIR /app
COPY target/*.jarapp.jar
EXPOSE 80
