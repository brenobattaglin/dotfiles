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

# Test idempotency: running it twice shouldn't fail
bash zsh/setup.sh > /dev/null
if [[ $? -eq 0 ]]; then
    echo "Test passed: zsh/setup.sh is idempotent (first run)"
else
    echo "Test failed: zsh/setup.sh failed on first run"
    exit 1
fi

bash zsh/setup.sh > /dev/null
if [[ $? -eq 0 ]]; then
    echo "Test passed: zsh/setup.sh is idempotent (second run)"
else
    echo "Test failed: zsh/setup.sh failed on second run"
    exit 1
fi

exit 0
