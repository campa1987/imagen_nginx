FROM ubuntu:12.04
MAINTAINER fernandocampagna01@gmail.com


###RUN###
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'mi primer dockerfile' > /usr/share/nginx/www/index.html

###VOLUME###
VOLUME /usr/share/nginx/www/


##ARG###
ARG webpage

###ADD###
ADD $webpage /usr/share/nginx/www/


###ENTRYPOINT###
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]


###EXPOSE###
EXPOSE 80
