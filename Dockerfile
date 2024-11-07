# Use a base image with an HTTP server
FROM nginx:alpine

# Copy the app files to the default nginx public directory
COPY . /usr/share/nginx/html

# Expose port 80 to make the app accessible
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
