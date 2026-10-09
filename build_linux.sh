#!/usr/bin/env bash
# Needs: sudo apt install build-essential libsdl2-dev   (players need libsdl2-2.0-0)
set -e
cd "$(dirname "$0")"
rm -rf dist && mkdir -p dist/ashfall
g++ -std=c++17 -O2 src/main.cpp -o dist/ashfall/ashfall -lSDL2
cp README.md LICENSE dist/ashfall/
(cd dist && tar czf ashfall-linux.tar.gz ashfall)
echo "Done: dist/ashfall-linux.tar.gz"
