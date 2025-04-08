FROM openjdk:21

WORKDIR /app

# Copy server.jar file and eula.txt
COPY minecraft-server.jar .
COPY eula.txt .

# EXPOSE the port
EXPOSE 25565

# Run minecraft-sever
ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft-server.jar", "nogui"]
