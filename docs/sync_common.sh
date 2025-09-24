#!/usr/bin/env bash
set -euo pipefail
HANDBOOK_REF="${1:-v2025.09}"  # 参照タグ/コミット
TARGET_DIR="docs/_common"
REPO="https://raw.githubusercontent.com/Ataru2025/nhk-handbook/${HANDBOOK_REF}"

mkdir -p "${TARGET_DIR}"
for f in common/standards.md common/conventions.md common/glossary.md common/dd_rules.md common/repo_structure.md common/interfaces.md common/versioning_release.md common/change_management.md common/ops_tips.md; do
  curl -fsSL "${REPO}/${f}" -o "${TARGET_DIR}/$(basename "$f")"
done
echo "[OK] synced common docs @ ${HANDBOOK_REF} -> ${TARGET_DIR}/"
