#!/bin/bash

CONFIG_PATH="/data"

echo "max-players=${MAX_PLAYERS}" > ${CONFIG_PATH}/server.properties
echo "difficulty=${DIFFICULTY}" >> ${CONFIG_PATH}/server.properties
echo "level-type=${LEVEL_TYPE}" >> ${CONFIG_PATH}/server.properties
echo "allow-cheats=${ALLOW_CHEATS}" >> ${CONFIG_PATH}/server.properties
echo "allow-nether=${ALLOW_NETHER}" >> ${CONFIG_PATH}/server.properties

echo "eula=true" > ${CONFIG_PATH}/eula.txt

cd ${CONFIG_PATH}
exec java -Xmx1024M -Xms1024M -jar /app/minecraft-server.jar nogui
