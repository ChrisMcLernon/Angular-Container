# Use official Node.js v10 image
FROM node:10

# Set the working directory
WORKDIR /usr/src/lafs

# Copy package.json and package-lock.json
COPY package*.json ./

# Install Angular CLI globally and app dependencies
RUN npm install -g @angular/cli@v6-lts \
    && npm install

# Copy the rest of the application source code
COPY . .

# Expose port 4200
EXPOSE 4200

# Start the application
CMD ["ng", "serve", "--host", "0.0.0.0"]