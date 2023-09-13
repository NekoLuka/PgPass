FROM ghcr.io/nekoluka/cliserver:main

RUN apk add gpg openssl gpg-agent git && git init /pass
