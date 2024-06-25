# Use a lightweight Node.js image as the base image for the runtime environment
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Install http-server globally to serve static files
RUN npm install -g http-server

# Copy the pre-built Angular files from your local machine (assuming they are in dist/browser)
COPY dist/browser /app

# Set the command to run http-server and serve the Angular app
CMD ["http-server", "/app", "-p", "80"]

# Expose port 80 to the outside world
EXPOSE 80
