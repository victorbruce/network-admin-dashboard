# Choose a server to run react in
FROM nginx:latest

# Copy the build folder in react to the container
COPY ./build /var/www/

# COPY the nginx configurations
COPY deployments/nginx.conf /etc/nginx/nginx.conf

# Expose it on port 80
EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]

