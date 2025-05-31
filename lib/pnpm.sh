pnpm_packages=(
  "vercel"
)

for package in "${pnpm_packages[@]}"; do
  pnpm install -g "$package"
done
