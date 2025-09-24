# Coding Style（Python）

- **Python**: 3.10+（3.12 動作確認）  
- **整形**: black（line-length 100）、isort（profile=black）  
- **静的解析**: ruff（lint）, mypy（任意・段階導入）  
- **ログ**: `logging` を標準化（モジュールロガー単位、INFO=運用、DEBUG=開発）  
- **例外**: 例外は握り潰さず、エラーコード/メッセージ方針を統一  
- **テスト**: pytest（`./tests`、`pytest -q`）、CIで自動実行  
- **コミット**: Conventional Commits（feat/fix/docs/chore/ci/refactor/test）

ツール設定例（`pyproject.toml`）:
```toml
[tool.black]
line-length = 100
target-version = ["py310"]

[tool.isort]
profile = "black"

[tool.ruff]
line-length = 100
```
