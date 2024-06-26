#!/bin/bash

# Get hostname from current host
HOSTNAME=$(hostname)

# Define timedatectl tool
TIMEDATE_CTL="$PATH/timedatectl"

# Get current timezone
CURRENT_TIMEZONE=$("$TIMEDATE_CTL" | grep "Time zone" | awk '{print $3}')

# Define path to docker-compose
DOCKER_COMPOSE_FILE="docker-compose.yml"

# Define temp-file
TEMP_FILE=temp.yml

# Define absolute path to docker-compose binary file
DOCKER_COMPOSE="$PATH/docker-compose"

# Replace hostname value in docker-compose.yml
sed "s/example.com/$HOSTNAME/g" "$DOCKER_COMPOSE_FILE" > "$TEMP_FILE"
sed "s/Asia\/Tashkent/$CURRENT_TIMEZONE/g" "$DOCKER_COMPOSE_FILE" >> "$TEMP_FILE"

# Run changed docker-compose with updated hostname
sudo "$DOCKER_COMPOSE" -f "$TEMP_FILE" up -d --build

# Remove temp file
rm -f "$TEMP_FILE"