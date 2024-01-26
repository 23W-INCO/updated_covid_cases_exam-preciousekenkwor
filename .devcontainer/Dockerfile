# Use the official Python base image with Alpine Linux
FROM python:3.10-alpine

	
FROM node:19-bullseye

# Set the working directory in the container
WORKDIR /app

# Install necessary dependencies
RUN apk add --no-cache gcc musl-dev libffi-dev openssl-dev git

COPY requirements.txt .

RUN pip install -r requirements.txt

# Install the Python dependencies

COPY package.json .
COPY package-lock.json .

RUN npm i
# Copy the entire project to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Command to run the Python application using Gunicorn
# Run the FastAPI application using uvicorn server
CMD ["uvicorn", "fastapi:app", "--host", "0.0.0.0", "--port", "8000"]