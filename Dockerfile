# Use a lightweight Linux base with Python installed
FROM python:3.11-slim
FROM jupyter/base-notebook

# Set working directory inside the container
WORKDIR /app

# Copy the rest of the application code
COPY . .

USER root

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \ 
    && rm -rf /var/lib/apt/lists/*

# Default command (can be overridden)
# CMD ["python", "main.py"]
