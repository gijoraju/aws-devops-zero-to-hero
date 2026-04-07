#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull rajugijo/simple-python-flask-app:latest

# Stop and remove existing container
docker stop simple-python-flask-app || true
docker rm simple-python-flask-app || true

# Run the Docker image as a container
docker run -d -p 5000:5000 rajugijo/simple-python-flask-app:latest
