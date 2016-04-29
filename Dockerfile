FROM evild/alpine-nginx:1.9.15-libressl

MAINTAINER DOMINIQUE HAAS <contact@dominique-haas.fr>

RUN apk add --no-cache git \
    && rm -rf /usr/html/* \
    && git clone https://github.com/ziahamza/webui-aria2.git /usr/html/ \
    && apk del git
