#!/usr/bin/env bash
# shellcheck shell=bash

# Genesis intentionally only sets sensible git defaults here.
#
# Identity, SSH, and commit signing are handled by tools installed via the Brewfile:
# - `gh auth login` writes the credential helper for HTTPS git operations
# - GitHub Desktop sets user.name / user.email on first sign-in
# - 1Password's developer SSH agent manages SSH keys and commit signing
configure_git_defaults() {
  echo "Configuring git defaults..."
  git config --global init.defaultBranch main
  git config --global push.autoSetupRemote true
  git config --global core.ignoreCase false
}
