FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install vlc -yq && \
    useradd vlc -rm

COPY http_stream.sh /home/vlc/http_stream.sh
USER vlc

ENTRYPOINT /home/vlc/http_stream.sh