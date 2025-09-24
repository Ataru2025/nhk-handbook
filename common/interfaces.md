# Interfaces（生成物の受け渡し契約）

## jcl_analyzer →（利用側：job_flow_diagram_generator / multi_business_flow）
- **File Lifecycle（Excel）**: 21列前提  
  - A: 入力リファレンス、B..T: 19固定列、U: 出力リファレンス  
  - 行1–6: 凡例（A1:D1 / E1:H1 結合、**A2..A6 ラベル配色**）  
  - 行7: ヘッダ、**フィルタ A7:U7**  
  - 列幅は B..T の固定リストを遵守（幅の変更は互換性破壊）
- **CSV**: Excelと同一順序・同名ヘッダ（凡例行は出力しない）
- **IO参照（棚卸し）**:  
  - A1:C1 凡例、A=ラベル / B:C=説明  
  - A..E = 入力Ref / 入力物理名 / 処理 / 出力物理名 / 出力Ref  
  - **番号なし／時系列**（未解決入力＝出てきた順、未完了出力＝CREATE出現順、READありは末尾に `▼`）

### 互換性ポリシー
- **後方互換**：列の追加は末尾のみ。既存列の順序・意味を変えない  
- **破壊的変更**：メジャーアップ（例：v2→v3）+ ADR 必須 + 事前告知  
- 生成物のファイル名ルール例：`output/<BIZID>/file_lifecycle.xlsx`（各プロジェクト docs に記載）

## 命名・判定の共通ルール（抜粋）
- DD 出力判定：`DISP=NEW` / `UNIT=SYSOUT=` / DD名に `OUT` → **CREATE**（READ→CREATE 昇格あり）  
- 参照解決は**過去限定**（未来のCREATEに紐付けない）  
- `DELETE → 同DSN → CREATE` は**新ライフサイクル**として扱う
