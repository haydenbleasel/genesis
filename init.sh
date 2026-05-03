#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "${SCRIPT_DIR}/lib/setup.sh"
source "${SCRIPT_DIR}/lib/nvm.sh"
source "${SCRIPT_DIR}/lib/bundle.sh"
source "${SCRIPT_DIR}/lib/npm.sh"
source "${SCRIPT_DIR}/lib/skills.sh"
source "${SCRIPT_DIR}/lib/cursor.sh"
source "${SCRIPT_DIR}/lib/defaults.sh"
source "${SCRIPT_DIR}/lib/dock.sh"
source "${SCRIPT_DIR}/lib/git.sh"
source "${SCRIPT_DIR}/lib/postflight.sh"
source "${SCRIPT_DIR}/lib/zshrc.sh"

main() {
  ensure_macos
  ensure_homebrew
  setup_nvm
  install_bundle
  install_npm_packages
  install_skills
  install_cursor_extensions
  configure_defaults
  configure_dock
  configure_git_defaults
  configure_zshrc
  print_postflight_steps
}

main "$@"
