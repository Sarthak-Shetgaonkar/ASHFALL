#!/usr/bin/env bash
# Run inside the MSYS2 UCRT64 shell:  bash build_windows.sh
# Needs: pacman -S mingw-w64-ucrt-x86_64-gcc mingw-w64-ucrt-x86_64-SDL2 zip
# Produces dist/ashfall-windows.zip, which runs on any Windows 10/11 PC with no installs.
set -e
cd "$(dirname "$0")"
rm -rf dist && mkdir -p dist/ashfall
g++ -std=c++17 -O2 src/main.cpp -o dist/ashfall/ashfall.exe -lSDL2 -static-libgcc -static-libstdc++
# bundle every non-system DLL the exe needs (SDL2.dll, libwinpthread, ...)
ldd dist/ashfall/ashfall.exe | awk '/ucrt64|mingw64/ {print $3}' | xargs -I{} cp "{}" dist/ashfall/
cp README.md LICENSE dist/ashfall/
(cd dist && zip -qr ashfall-windows.zip ashfall)
echo "Done: dist/ashfall-windows.zip"
