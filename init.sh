#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

source "${SCRIPT_DIR}/lib/setup.sh"
source "${SCRIPT_DIR}/lib/nvm.sh"
source "${SCRIPT_DIR}/lib/brew.sh"
source "${SCRIPT_DIR}/lib/casks.sh"
source "${SCRIPT_DIR}/lib/mas.sh"
source "${SCRIPT_DIR}/lib/npm.sh"
source "${SCRIPT_DIR}/lib/cursor.sh"

main() {
  ensure_macos
  ensure_homebrew
  setup_nvm
  install_brew_libs
  install_brew_casks
  install_mas_apps
  install_npm_packages
  install_cursor_extensions
}

main "$@"
