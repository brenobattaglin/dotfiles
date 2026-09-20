#!/bin/bash

casks=(
    "balenaetcher"
    "caffeine"
    "dbeaver-community"
    "discord"
    "ente-auth"
    "exodus"
    "font-dejavu-sans-mono-for-powerline"
    "font-monaspace-nerd-font"
    "font-noto-sans-symbols-2"
    "filen"
    "flutter"
    "ghostty"
    "iina"
    "maccy"
    "obsidian"
    "openlogi"
    "qbittorrent"
    "rectangle"
    "spotify"
    "steam"
    "zed"
    "zen"
)

formulaes=(
    "btop"
    "cocoapods"
    "colima"
    "curl"
    "czkawka"
    "dotnet"
    "fd"
    "kind"
    "gh"
    "git"
    "git-lfs"
    "glow"
    "lazydocker"
    "mole"
    "podman"
    "restic"
    "ripgrep"
    "tree-sitter"
    "tmux"
    "whalebrew"
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
