FROM ghcr.io/linuxserver/baseimage-alpine:3.13

LABEL \
  maintainer="TKVictor-Hang@outlook.fr"

RUN \
  apk update && \
  apk add --no-cache git nodejs-npm

RUN \
  git clone https://github.com/AdollaApp/Adolla.git /app/Adolla && \
  chown abc:abc /app/Adolla -R && \
  chown abc:abc /config -R

USER abc
ENV HOME=/config
WORKDIR /app/Adolla
RUN \
  npm install

USER root
COPY root/ /

EXPOSE 8080
