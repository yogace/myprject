FROM centos:latest
MAINTAINER kokkisharma@gmail.com
RUN yum install -y httpd \
       zip \
       unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/bonativo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip bonativo.zip
RUN cp -rvf bonativo/* .
RUN rm -rf bonativo.zip bonativo
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
