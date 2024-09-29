#!/bin/sh

casks=(
    "android-studio"
    "balenaetcher"
    "beekeeper-studio"
    "caffeine"
    "deezer"
    "discord"
    "exodus"
    "filen"
    "flutter"
    "gimp"
    "iina"
    "iterm2"
    "maccy"
    "nordvpn"
    "obsidian"
    "postman"
    "qbittorrent"
    "rectangle"
    "spotify"
    "steam"
    "ticktick"
    "zed"
    "zen-browser"
    "zoom"
)

formulaes=(
    "cocoapods"
    "colima"
    "curl"
    "docker-compose"
    "dotnet"
    "exiftool"
    "git"
    "git-lfs"
    "python"
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
