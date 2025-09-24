# Job_Flow_Diagram_Generator_project（索引）

- 目的：JCLや定義からジョブフロー図を生成（SVG等）
- 相互参照：`jcl_analyzer` の DSN/処理種別と整合

## Repo Structure
- 主要ファイル: `svg_generator_main.py`, `svg_generator.py`, `svg_layout.py`, `svg_components.py`, `svg_connections.py`, `jcl_parser.py`, `constants.py`

## Inputs
- `jcl_analyzer` の CSV/Excel から DSN・処理種別を取り込み（インターフェース契約に従う）
- DSN 正規化方針と無視リスト（`SORTWK`, `&&temp` 等）
