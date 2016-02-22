FROM dochang/confd:latest
MAINTAINER dochang@gmail.com

COPY scripts /scripts

RUN set -ex && \
    /scripts/tor/install.sh && \
    /scripts/apk/clean.sh

VOLUME ["/var/lib/tor", "/etc/tor", "/var/log/tor"]
EXPOSE 9050
CMD ["/usr/bin/tor", "--DataDirectory", "/var/lib/tor"]
