FROM centos:latest

LABEL maintainer="Wiji"

RUN yum update -y && yum install httpd httpd-tools -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
