# Track Specification: Improve tmux setup script

#### Overview
This track aims to modernize and enhance the `tmux` setup process by switching the setup script to a more portable shell (`#!/bin/sh`) and introducing a plugin management system using `tpm` (Tmux Plugin Manager).

#### Functional Requirements
- **Update Shebang:** Modify `tmux/setup.sh` to use `#!/bin/sh` instead of `#!/usr/bin/env bash`.
- **Integrate TPM:** 
  - Install `tpm` (https://github.com/tmux-plugins/tpm) if not present.
  - Update `.tmux.conf` to include TPM configuration.
- **Add Plugins:** 
  - Configure `nordtheme/tmux` (https://github.com/nordtheme/tmux).
  - Configure `alexwforsythe/tmux-which-key` (https://github.com/alexwforsythe/tmux-which-key).
- **Automate Plugin Installation:** Update `setup.sh` to trigger the installation of defined plugins.

#### Acceptance Criteria
- `tmux/setup.sh` starts with `#!/bin/sh`.
- `tmux/setup.sh` successfully installs `tpm` and copies `.tmux.conf` to the home directory.
- `~/.tmux.conf` contains the plugin definitions and TPM bootstrap code.
- Plugins are functional within a `tmux` session.

#### Out of Scope
- Migrating other setup scripts to `#!/bin/sh`.
- Configuring detailed options for the new plugins beyond basic installation.
