# Stage 1: Build the React app
FROM node:20 AS builder

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY ./frontend/package.json ./frontend/package-lock.json /app/
RUN npm install --legacy-peer-deps

# Copy the rest of the application
COPY ./frontend /app

# Build the React app for production
RUN npm run build

# Stage 2: Serve the React app with Nginx
FROM nginx:alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy the build output from the React app to Nginx's static directory
COPY --from=builder /app/build /usr/share/nginx/html

# Copy a custom Nginx configuration file (optional)
# COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to serve the app
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
