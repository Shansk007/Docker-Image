# Use the lightweight Nginx image
FROM nginx:alpine

# Copy your static website files (HTML, CSS, etc.)
COPY ./html /usr/share/nginx/html

# Optional: Copy custom nginx config file
# Uncomment if you have ./nginx/nginx.conf
# COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx (default command from base image)
CMD ["nginx", "-g", "daemon off;"]
