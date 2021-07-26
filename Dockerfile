FROM centos:latest
MAINTAINER kokkisharma@gmail.com
RUN yum install -y httpd \
        zip \ 
        unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/xanpon.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip xanpon.zip
RUN cp -rvf xanpon/* .
RUN rm -rf xanpon.zip xanpon
CMD {"/usr/sbin/httpg", "-D" "FOREGROUND"}
EXPOSE 80
