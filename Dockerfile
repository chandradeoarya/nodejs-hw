# Use the official Node.js 14.x image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Expose the port that the application listens on
EXPOSE 8000

# Define the command to run the application
CMD ["npm", "start"]