# Implementation Plan: Improve tmux setup script

#### Phase 1: Foundation & TPM Integration [checkpoint: 2579735]
- [x] Task: Update `tmux/setup.sh` shebang to `#!/bin/sh`. (0c8151a)
- [x] Task: Implement TPM (Tmux Plugin Manager) installation in `tmux/setup.sh`. (2650267)
- [x] Task: Conductor - User Manual Verification 'Phase 1: Foundation & TPM Integration' (Protocol in workflow.md). (2579735)

#### Phase 2: Configuration & Plugins [checkpoint: 32fc15f]
- [x] Task: Update `tmux/.tmux.conf` to include TPM bootstrap and plugin definitions. (376156e)
    - [x] Add `tmux-plugins/tpm` definition.
    - [x] Add `nordtheme/tmux` definition.
    - [x] Add `alexwforsythe/tmux-which-key` definition.
    - [x] Add TPM initialization snippet at the bottom.
- [x] Task: Update `tmux/setup.sh` to trigger TPM plugin installation (`~/.tmux/plugins/tpm/bin/install_plugins`). (9150c30)
- [x] Task: Conductor - User Manual Verification 'Phase 2: Configuration & Plugins' (Protocol in workflow.md). (32fc15f)
