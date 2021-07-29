FROM centos:latest
MAINTAINER kokkisharma@gmail.com
RUN yum install -y httpd \
       zip \
       unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/diagoona.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip diagoona.zip
RUN cp -rvf diagoona/* .
RUN rm -rf diagoona.zip diagoona
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
