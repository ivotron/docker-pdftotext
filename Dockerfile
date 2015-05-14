FROM debian:jessie
MAINTAINER Ivo Jimenez "ivo.jimenez@gmail.com"

RUN apt-get update && apt-get install -y poppler-utils
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/bin/pdftotext"]
