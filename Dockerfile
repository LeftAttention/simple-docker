# Use the official Nginx image as the base
FROM nginx:alpine

# Copy the static HTML page, CSS, and image files to the Nginx server directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY docker-logo.png /usr/share/nginx/html/

# Copy the Nginx configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf