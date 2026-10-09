#!/usr/bin/env bash
# Needs: brew install sdl2   (players also need: brew install sdl2)
set -e
cd "$(dirname "$0")"
rm -rf dist && mkdir -p dist/ashfall
clang++ -std=c++17 -O2 src/main.cpp -o dist/ashfall/ashfall $(sdl2-config --cflags --libs | sed 's/-lSDL2main//')
cp README.md LICENSE dist/ashfall/
(cd dist && tar czf ashfall-macos.tar.gz ashfall)
echo "Done: dist/ashfall-macos.tar.gz"
