# Use an official Node.js runtime
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Make your app's port available
EXPOSE 8080

# The command to run your app
CMD [ "node", "server.js" ]
