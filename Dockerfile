FROM php:5.6-fpm
MAINTAINER Thinegan Ratnam <thinegan@thinegan.com>

RUN apt-get update && apt-get install -y supervisor
RUN apt-get install -y php5-mysql php5-xmlrpc php5-readline php5-ldap php5-json php5-imagick \
php5-gd php5-dev php5-curl php5-cli php5-mcrypt

ADD config/custom.ini /usr/local/etc/php/conf.d/custom.ini
ADD supervisord.conf /etc/supervisor/supervisord.conf
ADD supervisor-config/php.sv.conf /etc/supervisor/conf.d/

EXPOSE 9000
# Define default command
CMD ["/usr/bin/supervisord","-c","/etc/supervisor/supervisord.conf"]
