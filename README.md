# dotfiles

macOS system preferences via `defaults write` and `PlistBuddy`.

## What's included

- **UI & UX** — Dark mode, animations, screenshots, scrollbars, menu bar
- **Dock** — Auto-hide, icon size, hot corners, Mission Control
- **Finder** — List view, extensions, icon settings, search scope
- **App Store** — Auto-updates, debug menu
- **Language** — Language & region settings

## Usage

```bash
bash -c "$(curl -LsS https://raw.githubusercontent.com/tylerhammer/dotfiles/main/setup/setup.sh)"
```

Or clone and run directly:

```bash
git clone git@github.com:tylerhammer/dotfiles.git
cd dotfiles/setup
./setup.sh
```
