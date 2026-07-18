#!/usr/bin/env bash
# shellcheck shell=bash

install_vscode_extensions() {
  local extensions=(
    "astro-build.astro-vscode"
    "atomiks.moonlight"
    "bierner.markdown-mermaid"
    "biomejs.biome"
    "bradlc.vscode-tailwindcss"
    "christian-kohler.npm-intellisense"
    "csstools.postcss"
    "dbaeumer.vscode-eslint"
    "esbenp.prettier-vscode"
    "mikestead.dotenv"
    "openai.chatgpt"
    "oxc.oxc-vscode"
    "Prisma.prisma"
    "tamasfe.even-better-toml"
    "unifiedjs.vscode-mdx"
    "YoavBls.pretty-ts-errors"
  )

  if ! command -v code >/dev/null 2>&1; then
    echo "Skipping VS Code extensions; install the VS Code CLI and rerun Genesis"
    return
  fi

  local installed_extensions=""
  installed_extensions="$(code --list-extensions 2>/dev/null || true)"

  local extension
  for extension in "${extensions[@]}"; do
    if grep -Fqix "${extension}" <<< "${installed_extensions}"; then
      echo "Skipping ${extension}; already installed"
      continue
    fi

    code --install-extension "${extension}"
  done
}
