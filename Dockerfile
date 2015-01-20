FROM debian:sid
MAINTAINER dochang@gmail.com

RUN apt-get update && \
    apt-get --yes install --no-install-recommends tor && \
    chown root:root /var/lib/tor /var/log/tor /etc/tor && \
    chmod 0700 /var/lib/tor /var/log/tor && \
    rm -rf /var/lib/apt/lists/*

VOLUME ["/var/lib/tor", "/etc/tor", "/var/log/tor"]
EXPOSE 9050
CMD ["/usr/bin/tor", "--DataDirectory", "/var/lib/tor"]
