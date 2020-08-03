# Squid Caching Proxy Docker Image

Just adds [Squid Caching Proxy](http://www.squid-cache.org/) to [debian:buster-slim](https://hub.docker.com/_/debian).

## Why another images of Squid?

As far as I searched in Docker Hub, there is no well-documented, up-to-date, and slim image of Squid.
I can't trust them at all!

## How to configure

Squid uses these paths by default. Replace with your directory/configuration file by `-v` option of `docker run`.

- Configuration file: `/etc/squid/squid.conf`
- Logs directory: `/var/log/squid/`
