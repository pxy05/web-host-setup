# Use official Node.js image as the base
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install deps
COPY package*.json ./
RUN npm install

# Copy rest of the app
COPY . .

# Build Next.js for production
RUN npm run build

# Expose port
EXPOSE 4141

# Start the app
CMD ["npm", "start"]

