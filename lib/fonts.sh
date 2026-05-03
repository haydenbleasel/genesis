#!/usr/bin/env bash
# shellcheck shell=bash

install_fonts() {
  local font_casks=(
    "font-geist"
    "font-geist-mono"
    "font-inter"
  )

  local font_cask
  for font_cask in "${font_casks[@]}"; do
    if brew list --cask "${font_cask}" >/dev/null 2>&1; then
      echo "Skipping ${font_cask}; already installed"
      continue
    fi

    brew install --cask "${font_cask}"
  done
}
