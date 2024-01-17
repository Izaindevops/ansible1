FROM nginx:latest
copy . /usr/share/ngnix/html
# Set the working directory to /app
WORKDIR /


