#!/bin/sh

casks=(
    "android-studio"
    "balenaetcher"
    "beekeeper-studio"
    "brave-browser"
    "caffeine"
    "discord"
    "dozer"
    "exodus"
    "filen"
    "flutter"
    "gimp"
    "iina"
    "iterm2"
    "kindle"
    "libreoffice"
    "maccy"
    "macfuse"
    "obsidian"
    "postman"
    "rectangle"
    "spotify"
    "steam"
    "ticktick"
    "transmission"
    "veracrypt"
    "visual-studio"
    "visual-studio-code"
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
    "neofetch"
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