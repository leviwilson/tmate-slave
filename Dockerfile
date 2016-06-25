FROM alpine:3.3
MAINTAINER Levi Wilson <levi@leviwilson.com>
RUN apk add --update git build-base pkgconf openssh zlib-dev libtool libevent-dev libssh-dev ncurses-dev automake autoconf cmake ruby

ENV PKG_CONFIG_PATH /usr/local/lib/pkgconfig/

RUN git clone https://github.com/msgpack/msgpack-c && cd msgpack-c && cmake . && make install && cd -

RUN git clone https://github.com/tmate-io/tmate-slave

ENTRYPOINT ["/bin/sh"]
