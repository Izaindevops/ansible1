# Use an official Nginx runtime as a base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the local website files into COPY . /usr/share/nginx/html

COPY . /var/lib/jenkins/workspace/ansible-jenkins-pipeline

# Expose port 80 to the outside world
EXPOSE 80

# Define the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
