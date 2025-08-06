# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install system dependencies (optional but useful for some packages)
RUN apk add --no-cache python3 make g++

# Copy package files and install deps
COPY package*.json ./
RUN npm ci

# Copy rest of the app
COPY . .

# Build Next.js app
RUN npm run build

# Expose port
EXPOSE 3000

# Start Next.js in production mode
CMD ["npm", "start"]
