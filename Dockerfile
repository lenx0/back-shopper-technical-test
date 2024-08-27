# Use an official Node.js image as the base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy all the remaining application code
COPY . .

# Compiles TypeScript code
RUN npm run build

# Set the environment variable for production
ENV NODE_ENV=production

# Exposes the port that the application will use
EXPOSE 3000

# Command to start the application
CMD ["npm", "run", "start"]
