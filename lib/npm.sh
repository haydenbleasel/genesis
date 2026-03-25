npm_packages=(
  "vercel"
)

for package in "${npm_packages[@]}"; do
  npm install -g "$package"
done
