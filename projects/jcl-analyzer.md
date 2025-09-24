# jcl_analyzer_project（索引）

- 目的：JCLの入出力ファイルのライフサイクルを抽出し、Excel/CSV を出力
- 参照：共通DDルール → ../common/dd_rules.md
- リリース例：v2.10.x（凡例21列、U列フィルタ、IO参照時系列）

## Repo Structure
- 主要ファイル: `jcl_analyzer.py`（CLI本体）, `output_manager.py`（Excel出力）, `io_reference.py`（棚卸し）, `jcl_parser.py`（解析）, `config.py`
- `docs/Design_and_Runbook.md` に運用手順と受入チェック（T75Z系）

## Interfaces（出力）
- File Lifecycle: 21列（A=入力Ref, B..T=19列, U=出力Ref）、凡例 1–6 行、ヘッダ 7 行目、フィルタ A7:U7、保存時に保護解除
- IO参照: A..E = 入力Ref / 入力物理名 / 処理 / 出力物理名 / 出力Ref（番号なし／時系列）

## Heuristics（共通）
- DD 出力判定：`DISP=NEW` / `UNIT=SYSOUT=` / `OUT*`（READ→CREATE 昇格）
