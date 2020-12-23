FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install vlc -yq && \
    useradd vlc -rm

COPY http_stream.sh /home/vlc/http_stream.sh
USER vlc

ENTRYPOINT /home/vlc/http_stream.sh
