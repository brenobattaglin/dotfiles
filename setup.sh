#!/bin/bash

casks=(
    "balenaetcher"
    "caffeine"
    "dbeaver-community"
    "deskcraft"
    "discord"
    "ente-auth"
    "exodus"
    "font-delugia-mono-powerline"
    "filen"
    "flutter"
    "ghostty"
    "gridcraft"
    "iina"
    "lightcraft"
    "obsidian"
    "openlogi"
    "pdfcraft"
    "photocraft"
    "rectangle"
    "steam"
    "wordcraft"
    "zed"
    "zen"
)

formulaes=(
    "btop"
    "cocoapods"
    "colima"
    "curl"
    "czkawka"
    "fd"
    "kind"
    "gh"
    "git"
    "git-lfs"
    "glow"
    "herdr"
    "lazydocker"
    "mole"
    "node"
    "podman"
    "restic"
    "ripgrep"
    "tree-sitter"
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
