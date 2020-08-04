FROM alpine:latest

LABEL maintainer="Mihoko-Okayami (https://hub.docker.com/r/mihokookayami/tor/)"

RUN apk add --no-cache tor

CMD tor -f /etc/tor/torrc