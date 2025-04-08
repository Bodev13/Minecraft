FROM openjdk:21

WORKDIR /app

# Copy server.jar file and eula.txt
COPY minecraft-server.jar .
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

# EXPOSE the port
EXPOSE 25565

# Run minecraft-sever
ENTRYPOINT ["./entrypoint.sh"]