# Versioning & Release

- **SemVer**: `MAJOR.MINOR.PATCH`（互換破壊=MAJOR、機能追加=MINOR、修正=PATCH）
- **ブランチ**: `main`（保護） / `release/vX.Y.Z` / `hotfix/*` / `feat/*` / `docs/*` / `chore/*`  
- **タグ**: `vX.Y.Z`（GitHub Release 作成推奨）

## フロー
- 新機能: `feat/*` → PR → `main` → リリース時 `release/vX.Y.Z` → マージ → `vX.Y.Z`
- 緊急修正: `hotfix/*` → PR（`main`へ）→ タグ `vX.Y.Z+1`
- ブランチ保護（最小）: PR必須 / status checks（smoke/pytest） / force-push禁止

## リリースノート
- CHANGELOG 準拠（Keep a Changelog 形式推奨）
- PRテンプレで「Docs影響」「Breaking」「移行手順」を明記
