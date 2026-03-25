#!/usr/bin/env bash

install_skill() {
  local source="$1"
  shift

  npx skills add "${source}" --global --yes --agent codex "$@"
}

install_skills() {
  install_skill "https://github.com/vercel-labs/agent-skills" --skill vercel-react-best-practices
  install_skill "https://github.com/vercel-labs/agent-skills" --skill web-design-guidelines
  install_skill "https://github.com/vercel-labs/agent-skills" --skill vercel-composition-patterns
  install_skill "https://github.com/coreyhaines31/marketingskills" --skill seo-audit
  install_skill "https://github.com/vercel-labs/next-skills" --skill next-best-practices
  install_skill "https://github.com/shadcn/ui" --skill shadcn
  install_skill "https://github.com/vercel/ai" --skill ai-sdk
  install_skill "https://github.com/vercel/turborepo" --skill turborepo
  install_skill "https://github.com/vercel-labs/next-skills" --skill next-cache-components

  install_skill "better-auth/skills"
  install_skill "get-convex/agent-skills"
  install_skill "stripe/ai"
  install_skill "clerk/skills"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  set -euo pipefail
  install_skills
fi
