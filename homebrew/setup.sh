#!/bin/sh

casks=(
    "android-studio"
    "balenaetcher"
    "caffeine"
    "dbeaver-community"
    "discord"
    "docker"
    "ente-auth"
    "exodus"
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
    "curl"
    "docker-compose"
    "dotnet"
    "kubectl"
    "kind"
    "gh"
    "git"
    "git-lfs"
    "mole"
    "node"
    "nvm"
    "tmux"
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
