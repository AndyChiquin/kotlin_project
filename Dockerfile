# Usa una imagen de JDK 20 como base
FROM openjdk:20-jdk-slim

# Crea el directorio de trabajo
WORKDIR /app

# Copia el JAR generado al contenedor
COPY build/libs/App-1.0-SNAPSHOT.jar app.jar

# Ejecuta la aplicación
CMD ["java", "-jar", "app.jar"]
