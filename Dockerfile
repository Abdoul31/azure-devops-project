# build l’application Java
# Definition du repertoire de travail
# Copie le fichier .jar compilé depuis l'étape précédente vers l'image.
#

FROM maven:3.9.9-eclipse-temurin-21 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# image de production plus légère
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/todo-app-1.0.0.jar app.jar
EXPOSE 8080
# Exécution l'application Java avec le .jar.
ENTRYPOINT ["java", "-jar", "app.jar"]


# # Build avec Maven
# FROM maven:3.9.9-eclipse-temurin-21 AS builder
# WORKDIR /app
# COPY . .
# RUN mvn clean package -DskipTests

# # Image finale 
# FROM eclipse-temurin:21-jdk
# WORKDIR /app
# COPY --from=builder /app/target/*.jar app.jar
# ENTRYPOINT ["java", "-jar", "app.jar"]