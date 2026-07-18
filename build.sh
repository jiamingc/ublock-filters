#!/bin/sh
set -euo pipefail

cd "$(dirname "$0")"

mkdir -p out
cat << EOF > out/filters.txt
! Title: jiamingc's filters
! Last modified: $(date -Ru)
! Homepage: https://github.com/jiamingc/ublock-filters

$(cat filters/*.txt)
EOF
