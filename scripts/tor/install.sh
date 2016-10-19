#!/bin/sh

set -ex

# Tor is in testing.
apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ tor

mkdir -p /var/lib/tor /var/log/tor /etc/tor

chown -R root:root /var/lib/tor /var/log/tor /etc/tor

chmod 0700 /var/lib/tor /var/log/tor
