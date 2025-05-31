extensions=(
  "biomejs.biome"
  "openai.chatgpt"
  "mikestead.dotenv"
  "dbaeumer.vscode-eslint"
  "unifiedjs.vscode-mdx"
  "atomiks.moonlight"
  "christian-kohler.npm-intellisense"
  "csstools.postcss"
  "esbenp.prettier-vscode"
  "YoavBls.pretty-ts-errors"
  "Prisma.prisma"
  "bradlc.vscode-tailwindcss"
)

for extension in "${extensions[@]}"; do
  cursor --install-extension "$extension"
done
