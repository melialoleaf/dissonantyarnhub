#!/usr/bin/env bash
set -e
REPO="melialoleaf/dissonantyarnhub"
LIB="lush-silk.a"
URL="https://github.com/${REPO}/releases/download/cosmic-ember-bright-anchor/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
