# Use a lightweight Linux base with Python installed
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy current directory contents into container
COPY . .

# Default command (can be overridden)
CMD ["python", "main.py"]
