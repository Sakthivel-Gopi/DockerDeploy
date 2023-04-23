# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary dependencies
RUN npm install

# Set the environment variable for the Node.js app
ENV NODE_ENV=production

# Expose the port that the app will listen on
EXPOSE 3000

# Run the Node.js app
CMD [ "npm", "start" ]
