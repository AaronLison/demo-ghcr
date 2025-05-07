FROM nginx:1.28.0@sha256:7d5e1be35e54874c8c6fea27d917002fffaf887eaf7bd12f3cb2cc7fa614cfdb
COPY index.html /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]