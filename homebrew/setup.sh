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
    "curl"
    "czkawka"
    "docker-compose"
    "dotnet"
    "kubectl"
    "kind"
    "gh"
    "git"
    "git-lfs"
    "glow"
    "mole"
    "node"
    "nvm"
    "restic"
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
