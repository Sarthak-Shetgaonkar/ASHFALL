# ASHFALL

A 2.5D open-world horror shooter written in C++17 with SDL2. No assets: all art, textures and audio are generated in code.

You are Wren, the last courier of Outpost Nine. A fungal bloom has turned the basin's dead into blind, sound-hunting monsters. A ferry leaves Port Marrow at dawn on day three. Find fuel, get the truck running, hold the relay tower while it uploads your coordinates, and reach the harbor before the ship leaves.

## Download
Grab the latest build from the **Releases** page (Windows, Linux, macOS), or from the itch.io page.
Windows: unzip and run `ashfall.exe`. No install needed.

## Features
- 1024x1024 procedurally generated map: ~60 ruined towns, roads, cliffs, dead forests, enterable buildings
- Day/night cycle, fog, flashlight, red apocalyptic sky
- Pistol, shotgun, carbine, crowbar; armor, medkits, sedatives, fuel; inventory screen
- Sanity system: darkness and monsters drain it; low sanity brings whispers, phantoms and a swaying screen
- Drivable vehicles with drift physics, pushable and explosive barrels, particles
- Story with objectives, radio log and lore notes

## Controls
| Key | Action |
|---|---|
| WASD | Move |
| Mouse | Look |
| Shift | Sprint |
| Space | Jump (handbrake in a car) |
| Left click | Fire / swing |
| R | Reload |
| E | Pick up / open door / enter or exit car / use relay |
| F | Flashlight |
| 1-4 | Weapons |
| H / G | Use medkit / sedatives |
| I | Inventory |
| Tab | Objectives and radio log |
| M | Toggle minimap (fuel cans are orange, goal is gold) |
| F11 | Fullscreen |
| Esc | Quit |

Optional: `ashfall.exe 42` starts a different world seed.

## Build from source
Needs a C++17 compiler and SDL2.

**Windows (MSYS2 UCRT64 shell)**
```
pacman -S mingw-w64-ucrt-x86_64-gcc mingw-w64-ucrt-x86_64-SDL2 zip
bash build_windows.sh        # makes dist/ashfall-windows.zip
```
**Linux**
```
sudo apt install build-essential libsdl2-dev
bash build_linux.sh
```
**macOS**
```
brew install sdl2
bash build_macos.sh
```
Or with CMake: `cmake -B build -DCMAKE_BUILD_TYPE=Release && cmake --build build`

## Releasing
Push to GitHub, then tag a version: `git tag v0.1.0 && git push --tags`.
GitHub Actions builds all three platforms and attaches the downloads to the release.

## License
MIT, see `LICENSE`.
