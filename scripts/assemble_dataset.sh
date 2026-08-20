#!/usr/bin/env bash
set -euo pipefail

output="${1:-hjc 8.18.zip}"
parts=(hjc_8.18.zip.part-*)

if [[ ! -e "${parts[0]}" ]]; then
  echo "No split archive parts found in the current directory." >&2
  exit 1
fi

cat "${parts[@]}" > "$output"

actual_sha="$(shasum -a 256 "$output" | awk '{print $1}')"
echo "$actual_sha  $output"

if [[ -f checksums-sha256.txt ]]; then
  expected_sha="$(awk '$2 == "hjc" && $3 == "8.18.zip" {print $1}' checksums-sha256.txt)"
  if [[ -n "$expected_sha" && "$actual_sha" != "$expected_sha" ]]; then
    echo "Checksum mismatch for $output." >&2
    exit 1
  fi
  if [[ -n "$expected_sha" ]]; then
    echo "Checksum OK."
  fi
fi

