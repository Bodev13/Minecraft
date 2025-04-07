FROM openjdk:21

# Creating a directoty /app
RUN mkdir -p /app

WORKDIR /app

# Copy server.jar file and eula.txt
COPY minecraft-server.jar .
COPY eula.txt .


ENV APPLICATION_PORT=25565

# EXPOSE the port
EXPOSE ${APPLICATION_PORT}

# Run minecraft-sever
ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft-server.jar", "nogui"]
