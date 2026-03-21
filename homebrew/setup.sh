#!/bin/sh

casks=(
    "android-studio"
    "balenaetcher"
    "caffeine"
    "dbeaver-community"
    "discord"
    "docker"
    "exodus"
    "filen"
    "firefox"
    "flutter"
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
    "cocoapods"
    "curl"
    "docker-compose"
    "dotnet"
    "kubectl"
    "kind"
    "git"
    "git-lfs"
    "mole"
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
