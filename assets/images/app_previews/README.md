# App previews by platform

Each device folder contains eight numbered PNGs, ordered from the sightings map
through the donation page. These are illustrative interfaces with fictional demo
data. Select the folder matching the store and device upload field.

| Platform | Device folder                             | Dimensions  |
| -------- | ----------------------------------------- | ----------- |
| Apple    | [iPhone medium](apple/iphone-medium/)     | 1206 × 2622 |
| Apple    | [iPhone large](apple/iphone-large/)       | 1320 × 2868 |
| Android  | [Phone](android/phone/)                   | 1080 × 1920 |
| Android  | [7-inch tablet](android/tablet-7-inch/)   | 1080 × 1920 |
| Android  | [10-inch tablet](android/tablet-10-inch/) | 1440 × 2560 |

The Android phone set uses a phone layout. The tablet sets use a wider tablet
layout, with larger cards and text, exported at two resolutions.

Editable sources, render scripts, icons, feature graphics, and overview sheets
remain in the store-specific marketing directories:

- [Apple upload and regeneration guide](../../../marketing/app-store/README.md)
- [Google Play upload and regeneration guide](../../../marketing/google-play/README.md)

From the repository root, regenerate all Apple previews or only Android phones:

```bash
bash marketing/app-store/render-previews.sh
bash marketing/google-play/render-previews.sh phone
```

Run the Google Play renderer without an argument to regenerate all Android device
sets. Still-image previews go in screenshot fields; video-preview fields require
videos.
