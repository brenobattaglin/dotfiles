#!/bin/sh

casks = (
    "android-studio"
    "authy"
    "balenaetcher"
    "brave-browser"
    "beekeeper-studio"
    "caffeine"
    "discord"
    "docker"
    "dozer"
    "exodus"
    "flutter"
    "gimp"
    "iina"
    "iterm2"
    "kindle"
    "maccy"
    "macfuse"
    "obsidian"
    "postman"
    "rectangle"
    "spotify"
    "steam"
    "transmission"
    "the-unarchiver"
    "veracrypt"
    "visual-studio"
    "visual-studio-code"
    "zoom"
)

formulaes = (
    "cocoapods"
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