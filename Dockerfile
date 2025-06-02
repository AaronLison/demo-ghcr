FROM nginx:1.25.3@sha256:b41c95c4080d503eac2e455a47280079c5905c6281a1a5ee8fe75b52a92b35a0

# Update and upgrade system packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY index.html /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]