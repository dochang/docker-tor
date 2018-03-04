docker-tor
==========

[![Docker Stars](https://img.shields.io/docker/stars/dochang/tor.svg)](https://hub.docker.com/r/dochang/tor/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dochang/tor.svg)](https://hub.docker.com/r/dochang/tor/)
[![Docker Automated build](https://img.shields.io/docker/automated/dochang/tor.svg)](https://hub.docker.com/r/dochang/tor/)
[![Docker Build Status](https://img.shields.io/docker/build/dochang/tor.svg)](https://hub.docker.com/r/dochang/tor/)
[![](https://images.microbadger.com/badges/image/dochang/tor.svg)](https://microbadger.com/images/dochang/tor "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/dochang/tor.svg)](https://microbadger.com/images/dochang/tor "Get your own version badge on microbadger.com")

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/tor -v /cachedir:/var/lib/tor dochang/tor:latest

