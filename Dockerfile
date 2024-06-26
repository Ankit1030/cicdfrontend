# # Use a lightweight Node.js image as the base image for the runtime environment
# FROM node:20-alpine

# # Set the working directory inside the container
# WORKDIR /app

# COPY package*.json ./

# RUN npm install -f
# # Install http-server globally to serve static files

# COPY . .

# RUN npm run build

# RUN npm install -g http-server

# # Copy the pre-built Angular files from your local machine (assuming they are in dist/browser)
# # COPY --from=build /app/dist/browser /app

# # Set the command to run http-server and serve the Angular app
# CMD ["http-server", "/app/dist/browser", "-p", "80"]

# # Expose port 80 to the outside world
# EXPOSE 80
# //------------------------------------
# Stage 1: Build the Angular application
# FROM node:20-alpine

# # Set the working directory
# WORKDIR /app

# # Install dependencies
# COPY package*.json ./
# RUN npm install -f

# # Copy the Angular project files
# COPY . .

# # Build the Angular application
# RUN npm run build

# # Stage 2: Serve the application using Node.js
# FROM node:20-alpine

# # Set the working directory
# WORKDIR /app

# # Copy the built files from the previous stage
# COPY --from=build /app/dist/browser /app/usr/share/man

# # Copy the server file
# COPY server.js .

# # Install dependencies for the server
# RUN npm install express 
# # RUN npm install express
# # Expose the port the app runs on
# EXPOSE 80

# # Start the server
# CMD ["node", "server.js"]

# docker run -d -p 4200:8080 your-angular-app
# //-----------------------------------------------------------------------------------
FROM node:18-alpine 
WORKDIR /app
COPY package*.json ./
RUN npm install -f
COPY . .
RUN npm run build 
RUN npm install -g express
EXPOSE 4200
CMD ["node", "server.js"]
# Stage 1: Build the Angular application

# Set the working directory in the container

# Copy package.json and package-lock.json to the working directory

# Install dependencies

# Copy the rest of the application source code to the working directory

# Build the Angular application in production mode

# Stage 2: Serve the application using Node.js
# FROM node:18-alpine

# Set the working directory in the container
# WORKDIR /app

# Copy the built Angular application from the previous stage
# COPY --from=build /app/dist /app/dist

# Copy the server file
# COPY server.js .

# Install dependencies for the server

# Expose the port the app runs on

# Start the server
