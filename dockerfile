# Use a multi-stage build for efficiency
FROM node:20-slim AS base
WORKDIR /code

# Copy package.json and lock file for optimized frontend build
COPY package.json package-lock.json ./
RUN npm install

# Copy remaining project files
COPY . .



# Switch to a Python base image for the final stage
FROM python:3.11.4-slim
WORKDIR /code

# Copy everything from the base stage
COPY --from=base /code/ /code/

# Copy local requirements.txt
COPY ./requirements.txt /code/requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the app port
EXPOSE 8000

# Start the application using the correct command
# CMD ["uvicorn", "manage.py", "runserver", "0.0.0.0:8000"]
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
