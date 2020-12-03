# Use the official Ubuntu 18.04 as base
FROM ubuntu:18.04


#pass non interactive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
#update
RUN apt-get clean
RUN apt-get -q update
#install software
RUN apt-get install -qy wget
RUN apt-get install -qy apache2

RUN rm -f /var/www/html/*
RUN echo "<p><img src="https://i.imgur.com/U3MbeMl.jpg" alt="" width="407" height="215" /></p>" > /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

##git test
##deploytest