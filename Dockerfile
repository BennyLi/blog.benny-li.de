FROM debian:buster

ARG HUGO_VERSION="0.42.2"

RUN apt-get update && apt-get install --yes curl
RUN curl -SL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz \
      | tar -xzC /usr/local/bin hugo \
      && ls -la /usr/local/bin

ENTRYPOINT ["/usr/local/bin/hugo"]
