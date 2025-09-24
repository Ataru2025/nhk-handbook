# multi_business_flow_analyzer（索引）

- 目的：複数業務IDを跨いだフロー分析（横断ビュー）
- 依存：共通DDルールに従う前提

## Scope
- 複数業務ID（FROM–TO/全件）を集約し、横断の依存/未解決を可視化

## Inputs
- `jcl_analyzer` の CSV（全件エクスポート）  
- 出力（レポート/グラフ）形式とファイル命名規約は各リポの `docs/` に記載
