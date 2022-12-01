FROM alpine:3.17.0
MAINTAINER Georgy Bogomolov
LABEL Cheap file-server

RUN apk update && apk add nginx && apk del && rm /var/cache/apk/* && \
	mkdir /var/www/files
	
COPY config/default /etc/nginx/http.d/default.conf

EXPOSE 80 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
