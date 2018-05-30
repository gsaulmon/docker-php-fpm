FROM fedora:24

RUN yum update -y \
    && yum install -y php php-pdo php-mysql php-pgsql php-gd php-pecl-mongo php-mbstring php-mcrypt php-fpm psmisc sqlite php-bcmath \
    && yum clean all \
    && sed -i 's/listen = \/run\/php-fpm\/www.sock/listen = 9000/g' /etc/php-fpm.d/www.conf \
    && sed -i 's/listen.allowed_clients = 127.0.0.1/;listen.allowed_clients = 127.0.0.1/g' /etc/php-fpm.d/www.conf

EXPOSE 9000

ENTRYPOINT ["php-fpm", "-F"]
