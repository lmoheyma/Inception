FROM debian:bullseye

RUN apt update -y
RUN apt install nginx -y && apt install openssl -y

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -newkey rsa:4096 -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=lmoheyma.42.fr/UID=lmoheyma"

RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/sites-avalaible/site
RUN ln -s /etc/nginx/sites-avalaible/site /etc/nginx/sites-enabled
RUN rm -f /etc/nginx/sites-enabled/default

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]