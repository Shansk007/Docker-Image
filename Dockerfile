# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy your custom HTML files to Nginx’s web root
COPY ./html /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx (default command provided by the base image)
CMD ["nginx", "-g", "daemon off;"]
