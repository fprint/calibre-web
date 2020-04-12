FROM linuxserver/calibre-web

MAINTAINER fprint

RUN apt-get update \
 && apt-get install -y git \
 && git clone https://github.com/fprint/calibre-web.git /books/calibre \
 && chown -R abc /books \
 && chmod -R 700 /books \
 && apt-get purge -y git \
 && apt-get clean

VOLUME /books/calibre

EXPOSE 8083
