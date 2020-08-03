FROM debian:buster-slim
LABEL maintainer="YAMAMOTO Yuji <yuji-yamamoto@iij.ad.jp>"

RUN apt-get update && \
  apt-get install squid -y && \
  apt-get autoremove --purge -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN groupadd --system squid --gid=999 && \
  useradd --system --gid squid --uid=999 --home-dir /var/spool/squid --shell /bin/bash squid && \
  mkdir -p /var/spool/squid /var/log/squid && \
  chown -R squid:squid /var/spool/squid /var/log/squid /var/run/

USER squid

ENTRYPOINT ["squid", "--foreground"]
