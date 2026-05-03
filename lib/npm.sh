#!/usr/bin/env bash
# shellcheck shell=bash

install_npm_packages() {
  local npm_packages=(
    "vercel"
  )

  local installed_packages=""
  installed_packages="$(npm list -g --depth=0 --parseable 2>/dev/null || true)"

  local package
  for package in "${npm_packages[@]}"; do
    if grep -qE "/node_modules/${package}\$" <<< "${installed_packages}"; then
      echo "Skipping ${package}; already installed"
      continue
    fi

    npm install -g "${package}"
  done
}
