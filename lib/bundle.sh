#!/usr/bin/env bash
# shellcheck shell=bash

install_bundle() {
  local brewfile="${SCRIPT_DIR}/Brewfile"

  if [[ ! -f "${brewfile}" ]]; then
    echo "Skipping bundle install; ${brewfile} not found"
    return
  fi

  echo "Installing Brewfile..."
  # Trust the third-party bun tap so brew bundle won't fail when HOMEBREW_REQUIRE_TAP_TRUST is set
  brew trust --tap oven-sh/bun
  if ! brew bundle --file="${brewfile}"; then
    echo "Some Brewfile entries failed (Mac App Store sign-in is the most common cause); rerun Genesis after resolving"
  fi
}
