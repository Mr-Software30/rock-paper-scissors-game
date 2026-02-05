FROM nginx:alpine

# Copy your project files into nginx (simple static site)
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY index.js /usr/share/nginx/html/index.js
COPY img /usr/share/nginx/html/img

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
