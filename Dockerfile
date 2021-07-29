FROM centos:latest
MAINTAINER kokkisharma@gmail.com
RUN yum install -y httpd \
       zip \
       unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/labspa.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip labspa.zip
RUN cp -rvf labspa/* .
RUN rm -rf labspa.zip labspa
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
