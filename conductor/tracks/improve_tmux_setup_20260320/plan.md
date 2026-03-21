# Implementation Plan: Improve tmux setup script

#### Phase 1: Foundation & TPM Integration
- [x] Task: Update `tmux/setup.sh` shebang to `#!/bin/sh`. (0c8151a)
- [x] Task: Implement TPM (Tmux Plugin Manager) installation in `tmux/setup.sh`. (2650267)
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Foundation & TPM Integration' (Protocol in workflow.md).

#### Phase 2: Configuration & Plugins
- [ ] Task: Update `tmux/.tmux.conf` to include TPM bootstrap and plugin definitions.
    - [ ] Add `tmux-plugins/tpm` definition.
    - [ ] Add `nordtheme/tmux` definition.
    - [ ] Add `alexwforsythe/tmux-which-key` definition.
    - [ ] Add TPM initialization snippet at the bottom.
- [ ] Task: Update `tmux/setup.sh` to trigger TPM plugin installation (`~/.tmux/plugins/tpm/bin/install_plugins`).
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Configuration & Plugins' (Protocol in workflow.md).
