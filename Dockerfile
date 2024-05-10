# Menggunakan image Nginx resmi sebagai base image
FROM nginx:alpine

# Menyalin file HTML ke dalam direktori default Nginx
COPY index.html /usr/share/nginx/html

# Menyalin file konfigurasi Nginx
COPY nginx.conf /etc/nginx/nginx.conf

COPY src /usr/share/nginx/html/src

# Port default untuk Nginx adalah 8080
EXPOSE 8080
