# debian-php5
Dockerized php-fpm service, built on top of official [Debian](https://hub.docker.com/_/debian/) images with supervisor.

# Image tags
* thinegan/debian-php5:jessie (Debian GNU/Linux 8)

# Installed packages
* [8.7, 8, jessie, latest (jessie/Dockerfile)](https://github.com/tianon/docker-brew-debian/blob/e8131d071a42b8e88cabbb0aa33023c7b66b7b93/jessie/Dockerfile)

# Image specific:
* supervisor
* php-fpm - v5.6.30

# Logs (stderr & stdout)
* /var/log/supervisor

# Config:
* Dependencies Package:
  * php5-mysql
  * php5-xmlrpc
  * php5-readline
  * php5-ldap
  * php5-json
  * php5-imagick
  * php5-gd
  * php5-dev
  * php5-curl
  * php5-cli
  * php5-mcrypt
* host path : /home/www/public_html/dev.timeclone.com
* container path : /home/www/public_html/dev.timeclone.com
* php.ini setup : config/custom.ini
* supervisor run : /usr/local/sbin/php-fpm -c /usr/local/etc/php-fpm.conf
* exposed port 9000
* default command: /usr/bin/supervisord

# Run example
```console
$docker run -d -P --name test_nodejs thinegan/debian-nodejs:jessie
$docker port test_php 9000
0.0.0.0:32768

```

# Issues
If you run into any problems with this image, please check (and potentially file new) issues on the [thinegan/debian-php5](https://github.com/thinegan/debian-php5) repo, which is the source for this image.

