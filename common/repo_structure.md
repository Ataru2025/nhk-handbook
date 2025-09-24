# Repository Structure（標準構成）

```
repo/
├─ README.md              # 薄い導線（中央HB＋ローカルdocs）
├─ docs/                  # プロジェクト固有ドキュメント
│   └─ _common/          # （任意）中央HBの同期コピー
├─ tests/                 # pytest テスト一式（test_*.py）
├─ .github/workflows/     # CI（smoke/pytest/リンクチェック等）
├─ scripts/               # 補助スクリプト（handoff 等）
├─ requirements.txt / pyproject.toml（任意）
└─ （ソース）             # このプロジェクトの実装（例：*.py）
```

**ルール**
- テストは `./tests/` 固定、`pytest` は **ルート**で実行
- CI は最小でも `smoke` を必須、Python系は `pytest` を可能なら追加
- 配布/手渡しは `scripts/handoff`（.gitを触らない、安全運用）
