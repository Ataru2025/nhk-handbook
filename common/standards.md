# Standards（共通標準）
- ブランチ: main（保護）/ release/vX.Y.Z / hotfix/* / feat/* / docs/* / chore/*
- main 直 push 禁止（PR経由・最低1承認）
- タグ: vX.Y.Z（リリース毎に付与、参照はタグ固定）
- Conventional Commits: feat/fix/docs/chore/ci/refactor/test …
- CI 最小要件: smoke + pytest（あれば）
