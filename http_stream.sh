#!/bin/bash

# Adapted from https://gist.github.com/bakman2/521fd7333b4fad6602b9f9955c4fbc2c

RTSP_USER=${RTSP_USER:-user}
RTSP_PASSWORD=${RTSP_PASSWORD:-password}
RTSP_ADDRESS=${RTSP_ADDRESS:-127.0.0.1}
RTSP_PATH=${RTSP_PATH:-/live}

cvlc -I dummy rtsp://${RTSP_USER}:${RTSP_PASSWORD}@${RTSP_ADDRESS}${RTSP_PATH} --sout "#transcode{vcodec=mjpg,quality=3,fps=5,acodec=none,width=1280,height=720}:standard{access=http{mime=multipart/x-mixed-replace; boundary=7b3cc56e5f51db803f790dad720ed50a},mux=mpjpeg,dst=:8888/videostream.cgi}"