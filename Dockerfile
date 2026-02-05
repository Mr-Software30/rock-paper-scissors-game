# 1. Use a small, secure base image
FROM nginx:alpine

# 2. Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# 3. Copy your project files into nginx
COPY . /usr/share/nginx/html

# 4. Expose port 80
EXPOSE 80

# 5. Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
