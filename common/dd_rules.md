# DD 出力判定ルール（規範）
- `DISP=NEW` → 出力（CREATE）
- `UNIT=SYSOUT=...` → 出力（CREATE）
- DD 名が `OUT` を含む（接頭/語/部分一致） → 出力扱い
- 既存判定が READ でも、上記に該当すれば CREATE に昇格
- ログ: `set_dd_logging(True)` で INFO を有効化（デフォルトOFF）
