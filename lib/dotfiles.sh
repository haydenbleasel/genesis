#!/usr/bin/env bash
# shellcheck shell=bash

link_dotfile() {
  local source_path="$1"
  local target_path="$2"

  mkdir -p "$(dirname "${target_path}")"

  if [[ -L "${target_path}" ]] && [[ "$(readlink "${target_path}")" == "${source_path}" ]]; then
    echo "Skipping ${target_path}; already linked"
    return
  fi

  if [[ -e "${target_path}" || -L "${target_path}" ]]; then
    local backup_path="${target_path}.genesis-backup.$(date +%Y%m%d%H%M%S)"
    mv "${target_path}" "${backup_path}"
    echo "Backed up ${target_path} to ${backup_path}"
  fi

  ln -s "${source_path}" "${target_path}"
  echo "Linked ${target_path} -> ${source_path}"
}

link_dotfiles() {
  echo "Linking dotfiles..."
  link_dotfile \
    "${SCRIPT_DIR}/dotfiles/cursor-settings.json" \
    "${HOME}/Library/Application Support/Cursor/User/settings.json"
}
