# itch.io page cheat sheet

**Title:** ASHFALL
**Short description:** Open-world 2.5D horror shooter. Survive the fungal ash basin, fuel the truck, reach the last ferry before dawn.
**Kind of project:** Downloadable
**Genre:** Shooter  |  **Tags:** horror, fps, survival, post-apocalyptic, open-world, retro, raycaster, singleplayer, zombies
**Pricing:** Free (or "$0 or donate")

## Description (paste into the page)
The Bloom swept the basin in nine days and the dead did not stay down. You are Wren, last courier of Outpost Nine.
A voice called Lantern keeps broadcasting from the relay at Cinder Ridge: a ferry leaves Port Marrow at dawn on day three. It will not wait.

- Huge procedurally generated map with ruined towns you can enter
- Blind fungal monsters that hunt by sound and gather under light
- Day/night cycle, fog, flashlight, sanity system with hallucinations
- Pistol, shotgun, carbine, crowbar, armor, medkits, sedatives, inventory
- Drivable vehicles with drift physics, explosive barrels

**Controls:** WASD move, mouse look, Shift sprint, E pick up/use, F flashlight, R reload, 1-4 weapons, H medkit, G sedatives, I inventory, M minimap, Tab objectives, F11 fullscreen.

**System requirements:** Windows 10/11, any CPU from the last 10 years, no graphics card needed (software rendered). Under 500 MB RAM.

## Uploading
Easiest: download `ashfall-windows.zip` from the GitHub release, then on your itch.io page click Edit game > Uploads > Upload files, tick "Windows".

Or with butler (https://itch.io/docs/butler/):
```
butler login
butler push dist/ashfall YOUR_ITCH_NAME/ashfall:windows --userversion 0.1.0
```
(Linux/macOS: push the extracted folders to channels `linux` and `mac` the same way.)

Add 3-5 screenshots (F-key screenshots from the game, e.g. the night flashlight view, a monster, the HUD) and a cover image of 630x500.
