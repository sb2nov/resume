FROM debian:stable-slim

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://deb.debian.org/debian stable main" > /etc/apt/sources.list \
    && echo "deb http://deb.debian.org/debian stable-updates main" >> /etc/apt/sources.list \
    && echo "deb http://deb.debian.org/debian-security stable-security main" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -qy \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-fonts-recommended \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
