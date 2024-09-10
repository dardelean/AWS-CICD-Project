#!/bin/bash
set -e

# Remove any existing container
docker rm -f laughing_feistel || true

# Pull the Docker image from Docker Hub
docker pull dardelean/hotel-app:latest

# Run the Docker image as a container
docker run -dit -p 80:80 --name hotel-app dardelean/hotel-app
