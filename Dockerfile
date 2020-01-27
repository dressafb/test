FROM debian:stretch

RUN apt-get -qqy update && \
    apt-get -qqy install pdf2htmlex && \
    rm -rf /var/lib/apt/lists/*

VOLUME /pdf
WORKDIR /pdf

CMD ["pdf2htmlEX"]
