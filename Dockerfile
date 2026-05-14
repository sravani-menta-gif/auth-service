FROM node:20-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package files first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source code
COPY . .

# Expose the port your app runs on
EXPOSE 3003

# Start the app
CMD ["node", "main.js"]
