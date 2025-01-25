# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install Flask==2.1.2 werkzeug==2.0.3

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
