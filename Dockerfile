# Use the official Python image as the base image
FROM python:3.9-slim

# Set a working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the script into the container
COPY script.py /app/

# Expose any necessary ports (e.g., if debugging is needed or RAHTI2 requires it)
EXPOSE 60020

# Set the default command to run the script
CMD ["python", "script.py"]
