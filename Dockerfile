# Use an official Node.js runtime as a base image
FROM node:18.16.0-alpine3.17

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that your Express app listens on (replace 3000 with your app's port if needed)
EXPOSE 3000

# Start the Express application
CMD ["npm", "start"]
