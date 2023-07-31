#!/bin/bash

# Set the environment variables for Docker Compose
export COMPOSE_FILE=docker-compose.yml  # Use the appropriate Docker Compose file here

# Read the content of the secret files and set them as environment variables
export MYSQL_ROOT_PASSWORD="$(cat ./database/secrets/mysql_root_password.txt)"
export MYSQL_PASSWORD="$(cat ./database/secrets/mysql_user_password.txt)"

# Bring up the Docker services defined in docker-compose.yml
docker-compose up -d
