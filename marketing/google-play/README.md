# Campus Cats Google Play assets

Prepared October 16, 2026 for **Google Play Console → Store presence → Store
listings → Default store listing → Assets**.

[View all eight tablet previews](preview-sheet.jpg). This overview is not an upload file.

## Upload files

| Console placement                          | File or folder                                                                                              | Dimensions         | Format                        |
| ------------------------------------------ | ----------------------------------------------------------------------------------------------------------- | ------------------ | ----------------------------- |
| App icon                                   | [`graphics/app-icon-512.png`](graphics/app-icon-512.png)                                                    | 512 × 512          | 32-bit RGBA PNG, fully opaque |
| Feature graphic (header)                   | [`graphics/feature-graphic-1024x500.png`](graphics/feature-graphic-1024x500.png)                            | 1024 × 500         | 24-bit RGB PNG                |
| Phone screenshots                          | [`android/phone/`](../../assets/images/app_previews/android/phone/) — eight numbered PNGs                   | 1080 × 1920 (9:16) | 24-bit RGB PNG                |
| Tablet assets → 7-inch tablet screenshots  | [`android/tablet-7-inch/`](../../assets/images/app_previews/android/tablet-7-inch/) — eight numbered PNGs   | 1080 × 1920 (9:16) | 24-bit RGB PNG                |
| Tablet assets → 10-inch tablet screenshots | [`android/tablet-10-inch/`](../../assets/images/app_previews/android/tablet-10-inch/) — eight numbered PNGs | 1440 × 2560 (9:16) | 24-bit RGB PNG                |

Device previews live under [`assets/images/app_previews/android/`](../../assets/images/app_previews/android/).
Apple previews are grouped separately under [`apple/`](../../assets/images/app_previews/apple/).
Graphics, editable sources, and render scripts stay in this marketing directory.

If the Console presents one combined tablet field, select the eight files in
`assets/images/app_previews/android/tablet-10-inch/`; do not combine both sets into one field. Upload each set in
filename order. Replace the existing iPhone compositions in the phone field with
the Android phone set. The old Apple header is 3840 × 1646; it does not fit the
Google Play feature-graphic field. The old phone sets also have a taller aspect
ratio than these Google Play exports.

The icon is below 1 MB, the feature graphic below 15 MB, and every device image
below 8 MB. Icon dimensions, image dimensions, RGB/alpha formats, and file sizes
were checked locally. No assets have been uploaded or submitted to Google Play.

Specifications checked against Google's [preview asset guidance](https://support.google.com/googleplay/android-developer/answer/9866151?hl=en)
and [icon design specifications](https://developer.android.com/distribute/google-play/resources/icon-design-specifications).
Google's large-screen guidance calls for at least four images, 16:9 or 9:16,
with sides between 1080 and 7680 pixels. Both tablet sets contain eight.

## What these images represent

**The device images are illustrative Android previews with fictional community
data, not screenshots captured from a running Android build.** The owner explicitly
chose generated previews instead of emulator captures. Each image includes that
disclosure. Meeting pixel and file-size requirements does not establish native
rendering accuracy or Google Play review acceptance. Google's guidance recommends
actual app captures for screenshot-based promotional eligibility.

The editable HTML reuses the maintained [App Store preview content](../app-store/source/preview.html)
and cat photos. The Android styles remove the iPhone device frame and Dynamic
Island, use Android-style status and gesture bars, and approximate the app's
Android tinted surfaces without iOS glass blur. Tablet layouts reflow the content
at a wider viewport with larger cards and readable text. The two tablet exports
share a composition at different pixel resolutions; they are not captures of two
physical devices. There are no external marketing headlines or device frames.

The maps use our own clearly labeled [campus schematic](source/campus-map.svg),
not Apple or Google map tiles. No third-party map attribution was removed from
retained imagery. The history line connects discrete fictional reports; it does
not represent continuous GPS tracking. Donation imagery shows an external donation
action, and elections are internal club presidential elections.

The icon is resized from the bundled app icon, without adding rounded corners or
shadows. The feature graphic crops only side scenery from the existing campus-cat
illustration, preserving the subjects' proportions. No new AI-generated artwork
was needed. Still images belong in the image fields; the Video field requires a
YouTube URL.

## Order and suggested alt text

The filenames are identical in all three device folders. These alt descriptions
stay below Google's recommended 140-character limit.

| Filename                       | Suggested alt text                                                                                            |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------- |
| `01-live-sighting-map.png`     | Illustrated sightings map with cat markers, age filters, and a report button; fictional campus data.          |
| `02-community-hub.png`         | Illustrated Community screen with alerts, chat, events, surveys, votes, and donations.                        |
| `03-presidential-election.png` | Illustrated club president election with two fictional nominees and a private ballot.                         |
| `04-feeding-stations.png`      | Illustrated feeding stations with stock status, known cats, search, and filters.                              |
| `05-cat-catalog.png`           | Illustrated Cat-alog with three demo cats, photos, favorites, search, sorting, and filters.                   |
| `06-cat-sighting-history.png`  | Illustrated Goldie profile with recorded sighting locations and a history timeline on a fictional campus map. |
| `07-member-profile.png`        | Illustrated fictional member profile with achievements, a displayed title, and previous sightings.            |
| `08-donation-setup.png`        | Illustrated club donation page with a cat photo, club story, and an external donation button.                 |

Icon alt text: “Orange Campus Cats mascot wearing a graduation cap against a blue sky.”

Feature graphic alt text: “Three campus cats beside a feeding station in a leafy university garden.”

## Regenerate

From the repository root, with Chromium and ImageMagick installed:

```bash
bash marketing/google-play/render-graphics.sh
bash marketing/google-play/render-previews.sh
```

To export one device set, pass `phone`, `tablet-7-inch`, or `tablet-10-inch` to
`render-previews.sh`. Review regenerated files if the shared App Store content
changes. The renderer uses a temporary browser profile, exports opaque RGB device
images, and checks their dimensions and file-size limits.

To refresh the tablet overview after regenerating its source images:

```bash
magick montage assets/images/app_previews/android/tablet-10-inch/*.png -thumbnail 360x640 -tile 4x2 -geometry +8+8 -quality 90 marketing/google-play/preview-sheet.jpg
```

## Build and publication status

An EAS read-only lookup on October 16, 2026 found completed Android production build
`ca6a6eee-b2b8-4a98-bdde-df6f68893c08`, version **1.3.1**, version code **2**, from
commit `10149e722fe9acaa63f96cde649d9436f40c0865`. That build was not used for these
illustrated previews. Its presence does not establish backend deployment, Play
Console submission, review acceptance, or release status; none of those were
verified by this asset work.
