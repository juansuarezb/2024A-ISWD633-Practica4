FROM centos:7
RUN yum -y update
RUN yum -y install httpd
COPY ./web /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]