#!/bin/sh

# Test if the tmux/setup.sh script exists
if [ -f "tmux/setup.sh" ]; then
    echo "Test passed: tmux/setup.sh exists"
else
    echo "Test failed: tmux/setup.sh does not exist"
    exit 1
fi

# Test if the tmux/.tmux.conf file exists
if [ -f "tmux/.tmux.conf" ]; then
    echo "Test passed: tmux/.tmux.conf exists"
else
    echo "Test failed: tmux/.tmux.conf does not exist"
    exit 1
fi

# Mock HOME to a temporary directory for testing
MOCK_HOME=$(mktemp -d)
ORIGINAL_HOME=$HOME
export HOME=$MOCK_HOME

# Run the setup script
sh tmux/setup.sh > /dev/null
RESULT=$?

# Restore HOME
export HOME=$ORIGINAL_HOME

if [ $RESULT -eq 0 ]; then
    echo "Test passed: tmux/setup.sh executed successfully"
else
    echo "Test failed: tmux/setup.sh failed execution"
    rm -rf "$MOCK_HOME"
    exit 1
fi

# Check if .tmux.conf was copied to mock home
if [ -f "$MOCK_HOME/.tmux.conf" ]; then
    echo "Test passed: .tmux.conf was copied to HOME"
else
    echo "Test failed: .tmux.conf was not copied to HOME"
    rm -rf "$MOCK_HOME"
    exit 1
fi

# Clean up
rm -rf "$MOCK_HOME"

exit 0
