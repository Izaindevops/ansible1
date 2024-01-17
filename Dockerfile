FROM nginx:1.21.3-alpine

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Create directories for SSL certificates
RUN mkdir -p /etc/nginx/ssl

# Copy your custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy SSL certificates
COPY etc/.auth_keys/fullchain.pem /etc/nginx/ssl/
COPY etc/.auth_keys/privkey.pem /etc/nginx/ssl/

# Set the working directory (if needed)
WORKDIR /usr/src/app
