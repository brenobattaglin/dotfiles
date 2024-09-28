#!/bin/sh

casks=(
    "android-studio"
    "balenaetcher"
    "beekeeper-studio"
    "caffeine"
    "discord"
    "exodus"
    "filen"
    "flutter"
    "firefox"
    "gimp"
    "iina"
    "iterm2"
    "maccy"
    "nordvpn"
    "obsidian"
    "postman"
    "rectangle"
    "spotify"
    "steam"
    "ticktick"
    "transmission"
    "zed"
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
