#!/usr/bin/env bash
set -e
REPO="papemafield/libetchedrover"
LIB="trimmed-polish.a"
URL="https://github.com/${REPO}/releases/download/bright-comet-calm-garden/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
