# debian-php5
Dockerized php-fpm service, built on top of official [Debian](https://hub.docker.com/_/debian/) images with supervisor.

# Image tags
* thinegan/debian-php5:latest (Debian GNU/Linux 8)

# Installed packages
* [8.10, 8, jessie, latest (jessie/Dockerfile)](https://github.com/tianon/docker-brew-debian/blob/e8131d071a42b8e88cabbb0aa33023c7b66b7b93/jessie/Dockerfile)

# Image specific:
* supervisor
* php-fpm - v5.6.33

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
* php.ini setup : config/custom.ini
* supervisor run : /usr/sbin/php5-fpm -c /etc/php5/fpm/php-fpm.conf
* exposed port 9000
* default command: /usr/bin/supervisord

# Run example
```console
$docker pull thinegan/debian-php5
$docker run -d -P --name test_php thinegan/debian-php5
$docker port test_php 9000
0.0.0.0:32768

# Docker compose, example of spinning 1 php-fpm containers with mounted volume from host.
services:
  phpserver1:
    image: thinegan/debian-php5
    container_name: phpfpm1
    hostname: phpserver1
    build: .
    # Exposed to host machines
    ports:
      - "9001:9000"
    volumes:
      - /home/www/public_html/dev.timeclone.com:/home/www/public_html/dev.timeclone.com
```

# Issues
If you run into any problems with this image, please check (and potentially file new) issues on the [thinegan/debian-php5](https://github.com/thinegan/debian-php5) repo, which is the source for this image.

