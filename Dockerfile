FROM openjdk:17-alpine

WORKDIR /app

COPY minecraft-server.jar .

COPY eula.txt .

ENV APLICATION_PORT=${APLICATION_PORT}

EXPOSE ${APLICATION_PORT}

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft-server.jar", "nogui"]
