# Use the official Node.js image as the base image
FROM node:14

# Set the working directory to /app in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY frontend/package.json frontend/package-lock.json ./

# Install frontend dependencies
RUN npm install

# Copy the remaining frontend source code to the container
COPY frontend/ ./

# Build the frontend application
RUN npm run build
