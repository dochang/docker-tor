FROM dochang/confd:latest
LABEL maintainer="dochang@gmail.com"

# Tor is in testing.
RUN apk add --no-cache \
        --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ \
        --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ \
        tor && \
    mkdir -p /var/lib/tor /var/log/tor /etc/tor && \
    chown -R root:root /var/lib/tor /var/log/tor /etc/tor && \
    chmod 0700 /var/lib/tor /var/log/tor

VOLUME ["/var/lib/tor", "/etc/tor", "/var/log/tor"]
EXPOSE 9050
CMD ["/usr/bin/tor", "--DataDirectory", "/var/lib/tor"]
