docker-tor
==========

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/tor -v /cachedir:/var/lib/tor dochang/tor:latest

