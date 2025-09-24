# Change Management（仕様変更/バグ修正）

## ADR（Architecture Decision Record）
- 影響の大きい決定は ADR に記録（Context / Decision / Consequences / Links）

## PR テンプレ（重要項目）
- 目的 / 変更点 / 影響範囲（互換性） / 移行手順 / 参照Issue / スクリーンショット / チェックリスト
- 破壊的変更は本文末尾に **`BREAKING CHANGE:`** を明記

## ラベル運用
- `type:feat` `type:fix` `type:docs` `priority:urgent` `area:jcl` など

## CHANGELOG
- 変更の要点をバージョン単位で記録（Added / Changed / Fixed / Removed）
