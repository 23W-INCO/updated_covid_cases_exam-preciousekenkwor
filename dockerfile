# 
FROM python:3.11.4
FROM node:20-slim AS base

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

# 

# Copy package.json and pnpm-lock.yaml
COPY package-lock.json package.json ./
# Install app dependencies using PNPM
RUN npm i
RUN pip install -r requirements.txt
COPY . .
# Build the TypeScript code
# Expose the app
EXPOSE 8000
# Start the application


# 
CMD ["npm", "run", "backend"]

