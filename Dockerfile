# Use an official Nginx runtime as a base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/htm

# Copy the local website files into COPY . /usr/share/nginx/html

COPY . /usr/share/nginx/html


# Expose port 80 to the outside world
EXPOSE 80

# Define the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
