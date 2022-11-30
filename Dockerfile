FROM ubuntu:focal
MAINTAINER Georgy Bogomolov
LABEL Cheap file-server

COPY config /tmp

RUN apt update && apt install -y nginx && apt clean && rm -rf /var/cache/apt/archives /var/lib/apt/lists/* && \
	mkdir -p var/www/files/ && \
	cp /tmp/default /etc/nginx/sites-available && \
	rm /tmp/default


EXPOSE 80 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
