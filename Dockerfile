FROM openjdk:8-jdk-alpine
EXPOSE 8080
WORKDIR /app
COPY wiremock-standalone-2.14.0.jar .
RUN mkdir mappings
COPY *.json mappings/
ENTRYPOINT ["java","-jar","wiremock-standalone-2.14.0.jar"]
