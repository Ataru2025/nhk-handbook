# ADR-0002: DD Output Heuristics（OUT*/SYSOUT/NEW）
- Status: Accepted（2025-09-17）
- Decision: DISP=NEW / UNIT=SYSOUT= / DD名にOUT → 出力扱い。READでも該当ならCREATEへ昇格
- Consequences: 誤分類減少・透明性向上。例外は将来のホワイト/ブラックリストで拡張
- Links: ../common/dd_rules.md
