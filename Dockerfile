FROM maven:3.9-eclipse-temurin-17
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package
CMD ["java","-jar","target/sample-app-1.0.jar"]
