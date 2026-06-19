# Use the official Node.js 22 image as the base
FROM node:22-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package files first (for better build caching)
COPY package*.json ./

# Install only production dependencies
RUN npm ci --omit=dev

# Copy the rest of the application code
COPY . .

# Default command when the container runs
CMD ["node", "app/sum.js"]
