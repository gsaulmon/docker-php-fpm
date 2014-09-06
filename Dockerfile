FROM fedora

RUN yum update -y
RUN yum install -y php php-pdo php-mysql php-pgsql php-gd php-pecl-mongo php-mbstring php-mcrypt php-fpm psmisc sqlite

EXPOSE 9000

ENTRYPOINT ["php-fpm", "-F"]
