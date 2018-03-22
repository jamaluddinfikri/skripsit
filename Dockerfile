# base images
FROM tobi312/rpi-nginx

# set maintainer
LABEL maintainer "jamaluddin8157@gmail.com"

# copy file
COPY index.html /var/www/html

# port yang di buka
EXPOSE 80 443
