
FROM alpine:3.8

MAINTAINER ops@lifen.fr

RUN apk update \
    && apk add squid \
    && rm -rf /var/cache/apk/*

CMD ["/usr/sbin/squid", "-f", "/etc/squid/squid.conf", "-NYCd", "1"]