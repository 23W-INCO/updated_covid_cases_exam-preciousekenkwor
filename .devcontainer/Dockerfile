# Stage 1: Build Python environment
FROM python:3.10-alpine AS python_builder

WORKDIR /app

# Install necessary dependencies
RUN apk add --no-cache gcc musl-dev libffi-dev openssl-dev git

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Build Node.js environment
FROM node:19-bullseye AS node_builder

WORKDIR /app

COPY package.json .

RUN npm install

# Stage 3: Final image
FROM python:3.10-alpine

WORKDIR /app

# Copy Python dependencies
COPY --from=python_builder /usr/local/lib/python3.10/site-packages /usr/local/lib/python3.10/site-packages

# Copy Node.js dependencies
COPY --from=node_builder /app/node_modules /app/node_modules

# Copy the entire project
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Command to run the Python application using Gunicorn
CMD ["uvicorn", "fastapi:app", "--host", "0.0.0.0", "--port", "8000"]
