# Base Image
FROM node:14.21.3

# Label for uploading to GitHub Packages
LABEL org.opencontainers.image.source=https://github.com/evando2000/a433-microservices

# Define working directory for the container
WORKDIR /app

# Copy all files from local computer to container on the working directory
COPY . /app

# Define environment variable for the container
ENV NODE_ENV=production DB_HOST=item-db

# Install all dependencies and build the production version of the app
RUN npm install --production --unsafe-perm && npm run build

# Expose container port
EXPOSE 8080

# Run application when the container is running
CMD [ "npm", "start" ]