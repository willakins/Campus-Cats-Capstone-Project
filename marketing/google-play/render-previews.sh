#!/usr/bin/env bash
set -euo pipefail
asset_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
preview_output="$asset_root/../../assets/images/app_previews/android"
render_temp="$(mktemp -d /tmp/campus-cats-play-previews.XXXXXX)"
trap 'rm -rf "$render_temp"' EXIT
command -v chromium >/dev/null
command -v magick >/dev/null
case "${1:-all}" in
  all) devices=(phone tablet-7-inch tablet-10-inch) ;;
  phone|tablet-7-inch|tablet-10-inch) devices=("$1") ;;
  *) echo 'Usage: render-previews.sh [all|phone|tablet-7-inch|tablet-10-inch]' >&2; exit 1 ;;
esac
names=(01-live-sighting-map 02-community-hub 03-presidential-election 04-feeding-stations 05-cat-catalog 06-cat-sighting-history 07-member-profile 08-donation-setup)
for device in "${devices[@]}"; do
  case "$device" in
    phone) window=432,768; scale=2.5; expected=1080x1920 ;;
    tablet-7-inch) window=720,1280; scale=1.5; expected=1080x1920 ;;
    tablet-10-inch) window=720,1280; scale=2; expected=1440x2560 ;;
  esac
  mkdir -p "$preview_output/$device"
  for index in "${!names[@]}"; do
    target="$preview_output/$device/${names[$index]}.png"
    chromium --headless --no-sandbox --disable-gpu --disable-dev-shm-usage \
      --no-first-run --user-data-dir="$render_temp/browser" --hide-scrollbars \
      --allow-file-access-from-files --force-device-scale-factor="$scale" \
      --window-size="$window" --virtual-time-budget=3000 --dump-dom \
      --screenshot="$render_temp/capture.png" \
      "file://$asset_root/source/preview.html?slide=$((index + 1))&device=$device" \
      >"$render_temp/page.html" 2>"$render_temp/chromium.log" || { cat "$render_temp/chromium.log" >&2; exit 1; }
    if ! grep -q 'data-ready="true"' "$render_temp/page.html"; then
      echo "Preview did not finish loading: $device / ${names[$index]}" >&2
      cat "$render_temp/chromium.log" >&2
      exit 1
    fi
    magick "$render_temp/capture.png" -alpha off -colorspace sRGB -depth 8 "PNG24:$target"
    actual="$(magick identify -format '%wx%h' "$target")"
    [[ "$actual" == "$expected" ]] || { echo "Wrong size: $target ($actual)" >&2; exit 1; }
    [[ "$(wc -c < "$target")" -lt 8000000 ]] || { echo "Too large: $target" >&2; exit 1; }
    magick identify "$target"
  done
done
