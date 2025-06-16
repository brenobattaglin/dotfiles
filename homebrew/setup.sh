#!/bin/sh

casks=(
    "android-studio"
    "balenaetcher"
    "beekeeper-studio"
    "caffeine"
    "discord"
    "docker"
    "exodus"
    "filen"
    "firefox"
    "flutter"
    "gimp"
    "iina"
    "iterm2"
    "kubectl"
    "maccy"
    "nordvpn"
    "obsidian"
    "postman"
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
