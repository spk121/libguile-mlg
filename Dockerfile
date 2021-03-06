FROM ubuntu:latest

WORKDIR /app

COPY . /app

ENV LANG C.UTF-8
ENV GUILD /usr/bin/guild
ENV TERM dumb
ENV VERBOSE true

RUN apt-get update \
  && apt-get install -y \
  guile-2.2-dev libtool texinfo autoconf automake gnulib git \
  texlive-base texlive-generic-recommended texlive-latex-base


# CMD ["autoreconf -vif -Wall && ./configure --enable-hardening && make && make check"]
