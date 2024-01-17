# Use an official Nginx runtime as a base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the local website files into the container at /usr/share/nginx/html
COPY ./website /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Define the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
