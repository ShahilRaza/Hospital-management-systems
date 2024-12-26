FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY ["package.json", "package-lock.json", "./"]

COPY . .
# Environment variables
ENV PORT=8080
ENV NODE_ENV=development

# Expose the port
EXPOSE 8080

# Start the application
CMD ["node", "serviceitem.js", "start"]