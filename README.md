# Dotfiles
---

My Dotfiles for Linux

## Table of Contents
1. [Information](https://github.com/JustAsteri/dotfiles#information)
2. [Screenshots](https://github.com/JustAsteri/dotfiles#screenshots)
3. [Fonts](https://github.com/JustAsteri/dotfiles#fonts)
4. [Terminal Apps](https://github.com/JustAsteri/dotfiles#terminal-apps)
    1. [Useful Packages](https://github.com/JustAsteri/dotfiles#useful-packages)
    2. [Development packages](https://github.com/JustAsteri/dotfiles#development-packages)
5. [Apps](https://github.com/JustAsteri/dotfiles#apps)
    1. [Other Apps](https://github.com/JustAsteri/dotfiles#other-apps)
6. [IDE](https://github.com/JustAsteri/dotfiles#ide)
7. [Shortcuts](https://github.com/JustAsteri/dotfiles#shortcuts)
8. [Workspaces layout](https://github.com/JustAsteri/dotfiles#workspaces-layout)
9. [Installation](https://github.com/JustAsteri/dotfiles#installation)

## Information

- Distribution: ZorinOS

## Fonts

> https://www.nerdfonts.com/font-downloads

- JetBrains: https://www.jetbrains.com/lp/mono/
- Cascadia: https://github.com/microsoft/cascadia-code
- Fira Code: https://github.com/tonsky/FiraCode

## Terminal Apps

| Use | Package |
| --- | ------- |
| File manager | [ranger](https://github.com/ranger/ranger) |
| Text editor | [neovim](https://neovim.io/) |
| Terminal multiplexer | [tmux](https://github.com/tmux/tmux) |
| Terminal system monitor | [htop](https://github.com/hishamhm/htop) |
| Terminal UI for git | [lazy-git](https://github.com/jesseduffield/lazygit)
| Spotify TUI | [spotify-tui](https://github.com/Rigellute/spotify-tui)

### Useful packages

| Use | Package |
| --- | ------- |
| Shell | [zsh]() |
| Terminal prompt | [stastarrhip-prompt](https://starship.rs/) |
| Shell plugin manager | [oh-my-zsh]() |
| `ls` alternative | [lsd](https://github.com/Peltoche/lsd) |
| `cat` alternative | [bat](https://github.com/sharkdp/bat) |
| Terminal information display | neofetch
| fuzzy-finder | [fzf](https://github.com/junegunn/fzf) |
| spotify client | [spotifyd](https://spotifyd.github.io/spotifyd/)
| app launcher | [ulauncher](https://ulauncher.io/)

### Development packages

- nodejs
- npm
- python/python3
- pip/pip3
- nvm

## Apps

| Use | App |
| --- | --- |
| Terminal emulator | kitty |
| Note-taking | 
| Cloud storage | [Pcloud](https://www.pcloud.com/es/) 
| Code editor | [VScode](https://code.visualstudio.com/)
| Vim browser | [qutebrowser](https://qutebrowser.org/)
| Browser | [firefox](https://www.mozilla.org/es-MX/firefox/new/) 
| Media player | [mpv](https://mpv.io/) 
| Torrent downloader | [qbittorrent](https://www.qbittorrent.org/)
| Music | [Spotify](https://open.spotify.com/)

### Other apps

| Use | App |
| --- | --- |
| Server | [xampp](https://www.apachefriends.org/es/index.html)
| Arduino IDE | [arduino_ide](https://www.arduino.cc/en/software/)

## Shortcuts

| Keys | App |
| ---- | --- |
| super + enter | Terminal
| super + b | Browser
| super + q | Qutebrowser
| super + c | Code Editor
| super + m | App launcher
| super + e | File Explorer
| super + n | Note-taking App

## Workspaces Layout
1. Web browser
2. Code editor
3. Terminal
4. Git
5. File explorer
6. Music
7. Media
8. Note-taking app
9. Others

## Installation

Install my dotfiles

1. Execute the `.installation` script.
2. Install all the manual apps
    1. Xampp
    2. pcloud
    3. spotify
3. Configure `ssh` for git and github
    1. `ssh-keygen -t rsa -b 4096 -C “tu_email@gmail.com”`
    2. `eval ssh-agent -s`
    3. `ssh-add ~/.ssh/id_rsa`
    4. Add public key to github
