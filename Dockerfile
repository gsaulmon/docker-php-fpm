FROM fedora

RUN yum update -y \
    && yum install -y php php-pdo php-mysql php-pgsql php-gd php-pecl-mongo php-mbstring php-mcrypt php-fpm psmisc sqlite \
    && yum clean all

EXPOSE 9000

ENTRYPOINT ["php-fpm", "-F"]
