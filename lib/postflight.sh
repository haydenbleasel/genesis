#!/usr/bin/env bash
# shellcheck shell=bash

print_postflight_steps() {
  cat <<'EOF'

Genesis finished. Manual steps:

- Sign in to npm: `npm login`
- Sign in to Stripe: `stripe login`
- Confirm Mac App Store sign-in if any `mas` installs were skipped
- Open Cursor once if you need to finish CLI or extension setup

EOF
}
