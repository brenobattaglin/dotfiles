#!/usr/bin/env bash

# Test if the zsh/setup.sh script exists
if [[ -f "zsh/setup.sh" ]]; then
    echo "Test passed: zsh/setup.sh exists"
    exit 0
else
    echo "Test failed: zsh/setup.sh does not exist"
    exit 1
fi
