<<<<<<< HEAD
FROM tobi312/rpi-nginx:alpine

MAINTAINER jamaluddin fikri <jamaluddin8157@gmail.com>

ADD conf/default.conf /etc/nginx/conf.d/

RUN mkdir /home/www

COPY index.html /home/www

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
=======
# base images
FROM tobi312/rpi-nginx

# set maintainer
LABEL maintainer "jamaluddin8157@gmail.com"

# copy file
COPY index.html /var/www/html

# port yang di buka
EXPOSE 80 443
>>>>>>> origin/master
