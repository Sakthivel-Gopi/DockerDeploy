# Use an official Node.js runtime as a parent image
FROM node:12-alpine

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies
RUN npm install


# Define the command to run the app
CMD [ "npm", "start" ]
