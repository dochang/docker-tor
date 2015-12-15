docker-tor
==========

[![Docker Stars](https://img.shields.io/docker/stars/dochang/tor.svg)](https://hub.docker.com/r/dochang/tor/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dochang/tor.svg)](https://hub.docker.com/r/dochang/tor/)

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/tor -v /cachedir:/var/lib/tor dochang/tor:latest

