#!/bin/bash

casks=(
    "android-studio"
    "balenaetcher"
    "caffeine"
    "dbeaver-community"
    "discord"
    "docker"
    "ente-auth"
    "exodus"
    "font-dejavu-sans-mono-for-powerline"
    "font-monaspace-nerd-font"
    "font-noto-sans-symbols-2"
    "filen"
    "firefox"
    "flutter"
    "ghostty"
    "iina"
    "kubectl"
    "maccy"
    "obsidian"
    "qbittorrent"
    "rectangle"
    "spotify"
    "steam"
)

formulaes=(
    "btop"
    "cocoapods"
    "colima"
    "curl"
    "czkawka"
    "docker"
    "docker-completion"
    "docker-compose"
    "dotnet"
    "fd"
    "kubectl"
    "kind"
    "gh"
    "git"
    "git-lfs"
    "glow"
    "lazydocker"
    "mole"
    "node"
    "nvm"
    "restic"
    "ripgrep"
    "tmux"
    "zoxide"
)

for c in ${casks[@]};
do
    (
        brew install --cask "$c"
    )
done

for f in ${formulaes[@]};
do
    (
        brew install "$f"
    )
done
