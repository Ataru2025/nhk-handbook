# Ops Tips（運用ヒント）

- **Windows/WSL**: `.git` を Explorer で開かない（`desktop.ini` 汚染）。VS Code Remote-WSL 推奨
- **handoff**: `.git` に触れず ZIP＋同名フォルダを生成（`handoff -H '*.md'` など）
- **SSH/SSO**: 組織移管後は SSH Key の「Enable SSO」を忘れずに
- **CI 落ち時**: `main` 直 push は禁止。PR の Checks を確認（smoke/pytest）
