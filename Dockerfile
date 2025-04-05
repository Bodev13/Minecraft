FROM openjdk:21

# Creating a directoty /app
RUN mkdir -p /app

WORKDIR /app

# Copy server.jar file and eula.txt
COPY minecraft-server.jar .
COPY eula.txt .


ENV APLICATION_PORT=${APLICATION_PORT}

# EXPOSE the port
EXPOSE ${APLICATION_PORT}

# Checking for eula.txt and accepting the terms
RUN if [ ! -f /app/eula.txt ]; then echo "eula=true" > /app/eula.txt; fi

# Run minecraft-sever
ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft-server.jar", "nogui"]
