FROM nginx:1.25.3
COPY index.html /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]