# Standards（共通標準）

## ブランチ戦略
- `main`（保護） / `release/vX.Y.Z` / `hotfix/*` / `feat/*` / `docs/*` / `chore/*`
- `main` 直 push は禁止（PR経由・最低 1 承認）

## タグ
- 形式: `vX.Y.Z`（例: `v2.10.0`）
- リリース毎にタグ付与し、ドキュメントの参照も **タグ固定**

## コミット規約（Conventional Commits）
- `feat:` / `fix:` / `docs:` / `chore:` / `ci:` / `refactor:` / `test:` ほか
- 破壊的変更は本文末尾に **`BREAKING CHANGE:`** を明記

## CI の最小要件
- smoke（起動確認） + pytest（あれば）
- （任意）Markdownリンクチェック
