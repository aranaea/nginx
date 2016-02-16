FROM ubuntu:15.10

# NGINX
RUN \
  apt-get update && \
  apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

# Configs
ADD config/nginx-sites-enabled-default /etc/nginx/sites-available/default

#start script relies on the $PHP_HOST environment variable
ADD scripts/startNginx.sh /usr/sbin/startNginx.sh

VOLUME /var/www/html
VOLUME /etc/nginx
VOLUME /etc/nginx/dev.conf

EXPOSE 80

CMD ["startNginx.sh"]
