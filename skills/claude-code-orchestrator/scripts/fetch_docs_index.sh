#!/usr/bin/env bash
set -euo pipefail
OUT_DIR="$(cd "$(dirname "$0")/.." && pwd)/references"
mkdir -p "$OUT_DIR"

curl -fsSL "https://code.claude.com/docs/llms.txt" -o "$OUT_DIR/llms-index.txt"
echo "saved: $OUT_DIR/llms-index.txt"