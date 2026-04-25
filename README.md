# Qtile Config Dependencies

## Qtile Extras

### qtile-extras
- **What:** Additional widgets and functionality for Qtile
- **Why:** Provides useful widgets like KeyboardLayout, StatusNotifier, etc.
- **Install (Fedora):**
  ```bash
  sudo dnf copr enable frostyx/qtile
  sudo dnf install qtile-extras
  ```

## App Launchers

### wofi
- **What:** Lightweight launcher for Wayland (shows installed apps to search and launch)
- **Why:** Simpler than rofi, good pywal integration, minimal dependencies
- **Install:** `sudo dnf install wofi`

### rofi
- **What:** Mature app launcher/dmenu replacement
- **Why:** More features than wofi, more themes, X11/Wayland support
- **Install:** `sudo dnf install rofi`

## Color Theme Tools

### pywal
- **What:** Generates color palettes from your wallpaper
- **Why:** Makes wofi/rofi match your wallpaper colors automatically
- **Install (Fedora):**
  ```bash
  sudo dnf copr enable luisbocanegra/kde-material-you-colors
  sudo dnf install python3-pywal
  ```
  Or with pipx (recommended):
  ```bash
  sudo dnf install pipx
  pipx install pywal
  ```
- **Usage:** `wal -i /path/to/wallpaper.jpg`
- **Note:** pywal creates cache in `~/.cache/wal/` that wofi/rofi read automatically

### pipx
- **What:** Tool for installing Python apps in isolated environments
- **Why:** Clean installs without conflicts or permission issues
- **Install:** `sudo dnf install pipx`
- **Usage:** `pipx install <package>`

## Wallpaper Tools

### swww (Wayland)
- **What:** Wallpaper setter made specifically for Wayland
- **Why:** Native Wayland support, smooth transitions, auto-rotation
- **Install:** `sudo dnf install swww`
- **Usage:** 
  ```bash
  swww img /path/to/wallpaper.jpg
  ```
- **Daemon required:** `swww-daemon` must be running for auto-rotation
- **Persistence:** Add `swww-daemon &` to qtile startup or `~/.xprofile`

### feh (X11 - not for Wayland)
- **What:** Image viewer/wallpaper setter for X11
- **Why:** Lightweight, reliable on X11
- **Install:** `sudo dnf install feh`
- **Status:** Does NOT work on Wayland

### nitrogen (not working)
- **What:** GUI wallpaper setter
- **Why:** Has limited Wayland support, may not work
- **Install:** `sudo dnf install nitrogen`
- **Status:** Not recommended for this setup

## Quick Setup

```bash
# Install dependencies
sudo dnf install swww wofi

# Install pywal (via pipx)
sudo dnf install pipx
pipx install pywal

# Set wallpaper with swww
swww img /path/to/your/wallpaper.jpg

# Generate colors from wallpaper
wal -i /path/to/your/wallpaper.jpg

# Start swww daemon (required for auto-rotation)
swww-daemon &

# Test wofi launcher
wofi --show drun
```

## Key Bindings (Current Config)

- **Alt+Return** - Terminal
- **Alt+e** - File Manager (nautilus)
- **Super+r** - wofi app launcher
- **Alt+ctrl+r** - Reload config