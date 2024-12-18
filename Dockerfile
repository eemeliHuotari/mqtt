# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your script into the container
COPY script.py .

# Expose any necessary ports (if applicable)
EXPOSE 60020

# Command to run the script
CMD ["python", "script.py"]
