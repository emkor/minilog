FROM alpine:3.12

LABEL maintainer="emkor93@gmail.com"

RUN apk update \
  && apk add --no-cache rsyslog rsyslog-pgsql \
  && rm -rf /var/cache/apk/*

COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 10514

CMD	["rsyslogd", "-n", "-f/etc/rsyslog.conf"]
