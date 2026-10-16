#!/usr/bin/env bash
set -euo pipefail
preview_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
preview_output="$preview_dir/../../assets/images/app_previews/apple"
preview_temp="$(mktemp -d /tmp/campus-cats-previews.XXXXXX)"
trap 'rm -rf "$preview_temp"' EXIT
mkdir -p "$preview_output"
command -v chromium >/dev/null
case "${1:-all}" in
  all) preview_displays=(large medium) ;;
  large|medium) preview_displays=("$1") ;;
  *) echo 'Usage: render-previews.sh [all|large|medium]' >&2; exit 1 ;;
esac
preview_names=(01-live-sighting-map 02-community-hub 03-presidential-election 04-feeding-stations 05-cat-catalog 06-cat-sighting-history 07-member-profile 08-donation-setup)
for preview_display in "${preview_displays[@]}"; do
  if [[ "$preview_display" == medium ]]; then
    preview_target="$preview_output/iphone-medium"
    preview_window=402,874
  else
    preview_target="$preview_output/iphone-large"
    preview_window=440,956
  fi
  mkdir -p "$preview_target"
  for preview_index in "${!preview_names[@]}"; do
    chromium --headless --no-sandbox --disable-gpu --disable-dev-shm-usage \
      --no-first-run --user-data-dir="$preview_temp/browser" --hide-scrollbars \
      --allow-file-access-from-files --force-device-scale-factor=3 \
      --window-size="$preview_window" --timeout=10000 --virtual-time-budget=1000 \
      --screenshot="$preview_target/${preview_names[$preview_index]}.png" \
      "file://$preview_dir/source/preview.html?slide=$((preview_index + 1))&display=$preview_display"
  done
done
