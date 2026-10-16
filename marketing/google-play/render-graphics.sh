#!/usr/bin/env bash
set -euo pipefail

asset_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd -- "$asset_root/../.." && pwd)"
command -v magick >/dev/null
mkdir -p "$asset_root/graphics"

# Preserve the existing artwork; Play applies its own icon mask and shadow.
magick "$repo_root/assets/images/default-app-icon.png" \
  -resize 512x512 -colorspace sRGB -depth 8 -alpha on \
  "PNG32:$asset_root/graphics/app-icon-512.png"

# Fit the original illustration without stretching. Only the side scenery is cropped.
magick "$repo_root/marketing/app-store/source/creative/campus-cats-header-art.png" \
  -resize '1024x500^' -gravity center -extent 1024x500 \
  -background '#fff9f0' -alpha remove -alpha off -colorspace sRGB -depth 8 \
  "PNG24:$asset_root/graphics/feature-graphic-1024x500.png"

magick identify "$asset_root/graphics/"*.png
