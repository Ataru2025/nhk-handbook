# NHKシステム刷新 ハンドブック

このリポは、NHKシステム刷新プロジェクトの **共通ルール／用語／設計原則／ADR** を集約する中央ドキュメントです。各サブプロジェクトは、ここへのリンク（**タグ固定**）で参照し、ローカル固有事項だけをそれぞれの `docs/` に置きます。

## 構成
- `common/` … 共通ルール（標準、記法、用語、DD判定、リリース運用、変更管理、運用Tips、リポ構成、インターフェース契約）
- `projects/` … サブプロジェクト別の要点（中央から見た索引）
- `adr/` … Architecture Decision Records（決定の履歴）
- `docs/` … 同期スクリプトなど補助

## 参照ルール（重要）
- **双方向ともタグ固定**でリンク（例: `v2025.09` / `v2.10.0`）
- サブプロジェクト → ハンドブック: `vYYYY.MM` タグを参照
- ハンドブック → サブプロジェクト: 各プロジェクトの `vX.Y.Z` タグを参照

## Compatibility Matrix（例）
| Handbook | jcl_analyzer | job_flow_diagram | multi_business_flow |
|---|---|---|---|
| v2025.09 | v2.10.x | v1.8.x | TBD |

---

### よく使うリンク（最新版はタグ固定で参照）
- 共通標準: `common/standards.md`
- 記法・運用慣例: `common/conventions.md`
- **DD出力判定ルール**: `common/dd_rules.md`
- 変更管理: `common/change_management.md`
- バージョニング/リリース: `common/versioning_release.md`
- リポ構成（標準）: `common/repo_structure.md`
- インターフェース契約: `common/interfaces.md`
- 運用Tips: `common/ops_tips.md`
- ADR一覧: `adr/`
