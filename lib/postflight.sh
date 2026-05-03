#!/usr/bin/env bash
# shellcheck shell=bash

print_postflight_steps() {
  cat <<'EOF'

Genesis finished. Manual steps:

- Sign in to GitHub: `gh auth login`
- Sign in to GitHub Desktop (this sets git user.name and user.email)
- Open 1Password, enable the developer SSH agent, and turn on commit signing for git
- Sign in to npm: `npm login`
- Sign in to Stripe: `stripe login`
- If any `mas` installs failed, open the App Store app and sign in there (Apple removed `mas signin` in macOS 10.13+), then rerun Genesis
- Open Cursor once if you need to finish CLI or extension setup

EOF
}
