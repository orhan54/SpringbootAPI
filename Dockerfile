# Image de base avec Java 21 JRE
FROM eclipse-temurin:21-jre

# Dossier de travail dans l'image
WORKDIR /app

# Copie du JAR généré dans le dossier de travail
COPY target/TP-0.0.1-SNAPSHOT.jar app.jar

# Port exposé (facultatif, pour Spring Boot)
EXPOSE 8080

# Point d'entrée
ENTRYPOINT ["java", "-jar", "app.jar"]
