# base images
FROM tobi312/rpi-nginx:alpine

# copy file
ADD conf/default.conf /etc/nginx/conf.d/

# membuat folder
RUN mkdir /home/www

# copy file
COPY index.html /home/www

# port yang di buka
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
