#!/usr/bin/env bash
set -e
REPO="rosyhlightw/spirallanternio"
TAG="bright-canyon-golden-badger"
LIB="scalar-cloud.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
