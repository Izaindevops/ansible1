# Use an official Nginx runtime as a base image
FROM nginx:latest

# Copy the local website files into COPY . /usr/share/nginx/html

COPY . /usr/share/nginx/html
