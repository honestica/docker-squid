
FROM alpine:20201218

MAINTAINER ops@lifen.fr

RUN apk update \
    && apk upgrade \
    && apk add squid \
    && rm -rf /var/cache/apk/*

CMD ["sh", "-c", "(tail -F /var/log/squid/access.log &) && /usr/sbin/squid -f /etc/squid/squid.conf -NYCd 1"]
