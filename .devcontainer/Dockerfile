# .devcontainer/Dockerfile
FROM python:3.10.10

WORKDIR /workspace

# Install FastAPI dependencies
RUN pip install fastapi uvicorn

# Install Node.js and npm
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs


# Install project dependencies
COPY ../package.json .
COPY ../package-lock.yaml .
RUN npm install

# Expose ports for FastAPI and Vite
EXPOSE 8000 5173

CMD ["npm", "run", "start"]
