#!/usr/bin/env bash
# shellcheck shell=bash

install_bundle() {
  local brewfile="${SCRIPT_DIR}/Brewfile"

  if [[ ! -f "${brewfile}" ]]; then
    echo "Skipping bundle install; ${brewfile} not found"
    return
  fi

  echo "Installing Brewfile..."
  if ! brew bundle --file="${brewfile}" --no-lock; then
    echo "Some Brewfile entries failed (Mac App Store sign-in is the most common cause); rerun Genesis after resolving"
  fi
}
