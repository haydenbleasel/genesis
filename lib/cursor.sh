install_cursor_extensions() {
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

  if ! command -v cursor >/dev/null 2>&1; then
    echo "Skipping Cursor extensions; install the Cursor CLI and rerun Genesis"
    return
  fi

  local extension
  for extension in "${extensions[@]}"; do
    cursor --install-extension "${extension}"
  done
}
