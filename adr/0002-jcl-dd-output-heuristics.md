# ADR-0002: DD Output Heuristics（OUT*/SYSOUT/NEW）

- Status: **Accepted**
- Date: 2025-09-17
- Context: JCLにおけるDD出力の自動判定が必要（分析/図化の両方で）
- Decision:
  - `DISP=NEW` / `UNIT=SYSOUT=` / `DD名にOUT` のいずれかで出力扱い
  - 既存判定が READ でも上記に該当すれば CREATE に昇格
  - ログON/OFF（`set_dd_logging`）を導入し、運用下で可視化
- Consequences:
  - 誤分類の減少・判定の透明性
  - ローカル命名の例外があればホワイト/ブラックリストで拡張
- Links: ../common/dd_rules.md
