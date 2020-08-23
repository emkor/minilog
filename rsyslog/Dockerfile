FROM alpine:3.12

LABEL maintainer="emkor93@gmail.com"

RUN apk update \
  && apk add --no-cache rsyslog rsyslog-pgsql \
  && rm -rf /var/cache/apk/*

COPY wait-for.sh wait-for.sh
RUN chmod u+x ./wait-for.sh
COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 10514

CMD	["sh", "./wait-for.sh", "postgres:5432", "--", "rsyslogd", "-n", "-f/etc/rsyslog.conf"]
