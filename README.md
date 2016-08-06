docker-tor
==========

[![Docker Stars](https://img.shields.io/docker/stars/dochang/tor.svg)](https://hub.docker.com/r/dochang/tor/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dochang/tor.svg)](https://hub.docker.com/r/dochang/tor/)
[![](https://images.microbadger.com/badges/image/dochang/tor:latest.svg)](http://microbadger.com/images/dochang/tor:latest "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/dochang/tor:latest.svg)](http://microbadger.com/images/dochang/tor:latest "Get your own version badge on microbadger.com")

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/tor -v /cachedir:/var/lib/tor dochang/tor:latest

