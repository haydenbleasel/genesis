extensions=(
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

for extension in "${extensions[@]}"; do
  cursor --install-extension "$extension"
done
