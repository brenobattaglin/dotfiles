#!/usr/bin/env bash

# Test if the zsh/setup.sh script exists
if [[ -f "zsh/setup.sh" ]]; then
    echo "Test passed: zsh/setup.sh exists"
else
    echo "Test failed: zsh/setup.sh does not exist"
    exit 1
fi

# Test if the zsh/aliases.zsh file exists
if [[ -f "zsh/aliases.zsh" ]]; then
    echo "Test passed: zsh/aliases.zsh exists"
else
    echo "Test failed: zsh/aliases.zsh does not exist"
    exit 1
fi

exit 0
