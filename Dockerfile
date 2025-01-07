# Use the official Node.js image as a base
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the app files
COPY . .

# Expose the application port
EXPOSE 4000

# Command to run the app
CMD ["node", "app.js"]
