# 1. Use a small, secure base image
FROM nginx:alpine



# 3. Copy your project files into nginx
COPY first.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY index.js /usr/share/nginx/html/index.js
COPY img /usr/share/nginx/html/img

# 4. Expose port 80
EXPOSE 80

# 5. Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
