FROM alpine:latest
MAINTAINER dochang@gmail.com

# Tor is in testing.
RUN apk add --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/testing/ tor && \
    mkdir -p /var/lib/tor /var/log/tor /etc/tor && \
    chown -R root:root /var/lib/tor /var/log/tor /etc/tor && \
    chmod 0700 /var/lib/tor /var/log/tor && \
    rm -rf /var/cache/apk/*

VOLUME ["/var/lib/tor", "/etc/tor", "/var/log/tor"]
EXPOSE 9050
CMD ["/usr/bin/tor", "--DataDirectory", "/var/lib/tor"]
