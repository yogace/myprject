FROM centos:latest
MAINTAINER kokkisharma@gmail.com
RUN yum install -y httpd \
       zip \
       unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/yooga.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip yooga.zip
RUN cp -rvf free-yoga-website-template/* .
RUN rm -rf yooga.zip free-yoga-website-template
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
