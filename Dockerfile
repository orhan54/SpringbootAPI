FROM eclipse-temurin:21-jre

# Exposer le port 8080
EXPOSE 8080

# Répertoire de travail dans le conteneur pour stocker le jar
WORKDIR /app

# Copie du fichier JAR
COPY /target/*.jar app.jar

# Point entree pour executer le fichier
ENTRYPOINT ["java","-jar","app.jar"]
