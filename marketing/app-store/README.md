# Campus Cats App Store assets

For reusable listing copy and metadata answers, see [App Store listing answers](../app-store-listing.md).

For Android uploads, use the separate [Google Play assets and upload guide](../google-play/README.md).
The Apple header and iPhone dimensions below do not match Google Play's fields.

## Header and search results

The following static creative assets are ready to select in App Store Connect's
**Header** and **Search Results** panels:

| Placement           | File                                                     | Dimensions         | Format               |
| ------------------- | -------------------------------------------------------- | ------------------ | -------------------- |
| Product page header | [header.png](creative-assets/header.png)                 | 3840 × 1646 (21:9) | Opaque 8-bit RGB PNG |
| Search results      | [search-results.png](creative-assets/search-results.png) | 3840 × 2560 (3:2)  | Opaque 8-bit RGB PNG |

The exports match Apple's [creative asset specifications](https://developer.apple.com/help/app-store-connect/reference/app-information/creative-assets-specifications),
checked October 6, 2026. They contain no alpha or transparency chunk. They are separate
from device screenshots and app-preview videos; they are not SVG uploads.

The header extends the existing graduation-cap cat mascot into a campus-garden
illustration with a feeding station and two companion cats. Its main subjects stay
near the center, with scenery at the edges to allow cropping. The search asset uses
the same illustration, Campus Field Guide colors, and the existing illustrative
Cat-alog interface. Its copy is “Know the cats. Care together.” Fictional UI content
is labeled as demo data. Neither asset advertises deferred features or includes
prices, URLs, awards, or other platforms' branding.

Review each composition in App Store Connect's Preview tool before submission;
Apple can crop placements differently by device and orientation. The assets have
been generated locally and have not been uploaded or submitted for review.

### Regenerate the creative exports

```bash
bash marketing/app-store/render-creative-assets.sh
```

This needs Chromium and ImageMagick. The editable composition is
[source/creative-assets.html](source/creative-assets.html); it reuses the Cat-alog
view in `source/preview.html`. The renderer writes the exact upload dimensions and
exports opaque RGB PNGs. Changes to the shared preview source can change the search
creative, so inspect regenerated exports.

The new illustration was created with the built-in image-generation tool using the
app icon as a style/character reference. The original 1915 × 821 image is preserved
in [source/creative/campus-cats-header-art.png](source/creative/campus-cats-header-art.png)
and is scaled during the header export. The exact prompt and provenance are recorded
in [source/creative/header-prompt.txt](source/creative/header-prompt.txt). All final
marketing typography and placement are rendered from HTML/CSS.

## Portrait screenshots

Eight portrait marketing compositions are exported for each iPhone display group.
Upload them in **App Previews and Screenshots → iPhone → Screenshots**, matching
the display group selected in Media Manager:

| Media Manager display group | Folder | PNG dimensions |
| --- | --- | --- |
| **iPhone with Dynamic Island (medium display)** — required on the supplied submission page | [`assets/images/app_previews/apple/iphone-medium/`](../../assets/images/app_previews/apple/iphone-medium/) | **1206 × 2622** |
| iPhone with Dynamic Island (large display) | [`assets/images/app_previews/apple/iphone-large/`](../../assets/images/app_previews/apple/iphone-large/) | 1320 × 2868 |

Both folders contain the eight filenames below. The 1320 × 2868 images in `apple/iphone-large/`
are rejected by the medium-display slot; use the files inside `apple/iphone-medium/`
for that slot. These are opaque RGB PNGs. App Preview slots are for videos,
not these still images. There are no iPad exports in this set, and
`preview-sheet.png` is an overview rather than an upload file.

The medium export renders the same composition proportionally within a 402 × 874
canvas at 3×. The large export uses a 440 × 956 canvas at 3×.

| Image                          | Focus                                                        |
| ------------------------------ | ------------------------------------------------------------ |
| `01-live-sighting-map.png`     | Sightings, age filters, map pins, and reporting              |
| `02-community-hub.png`         | Alerts, chat, events, surveys, votes, and donations          |
| `03-presidential-election.png` | Club president nominees and a private ballot                 |
| `04-feeding-stations.png`      | Stock status and known cats                                  |
| `05-cat-catalog.png`           | Search, sort, filters, favorites, and recent activity        |
| `06-cat-sighting-history.png`  | Cat information, mapped sightings, and a timeline            |
| `07-member-profile.png`        | Achievements, displayed titles, and contributed sightings    |
| `08-donation-setup.png`        | Finished donation page, club story, photo, and donate action |

[View the collection](preview-sheet.png). The repository README also links each
full-resolution image.

## Regenerate

Run from the repository root with Chromium installed:

```bash
bash marketing/app-store/render-previews.sh
```

The renderer uses a temporary Chromium profile, waits for local assets, and writes
all eight PNGs in both sizes. To regenerate only the required medium-display set:

```bash
bash marketing/app-store/render-previews.sh medium
```

Pass `large` to regenerate only the large-display set. To refresh the overview
with ImageMagick installed:

```bash
magick montage assets/images/app_previews/apple/iphone-large/*.png -thumbnail 440x956 -tile 4x2 -geometry +8+8 marketing/app-store/preview-sheet.png
```

## Artwork and product accuracy

These are **illustrative marketing compositions, not captures of the running native
app**. `source/preview.html` reproduces current UI patterns with fictional members,
election dates, reports, and club content. Each composition carries a demo-data
label. Native glass rendering varies by device; CSS blur and translucency approximate
that material in these previews.

The compositions use the app's default icon, Campus Field Guide colors, floating
glass navigation and controls, and bundled Ionicons glyphs. The map comes from the
existing Apple Maps capture of Georgia Tech; map attribution is retained. The
cat-history line joins discrete recorded locations: it does not represent continuous
GPS tracking or an inferred route. Achievements and titles use the definitions in
`core/domain/achievements.ts`.

The donation image shows the finished member-facing donation page with an external donation button. It makes no claims of
in-app payment processing, donation analytics, automatic outreach, or guaranteed
fundraising results. The election is an internal club presidential election.

The three existing AI-generated cat photos are supporting demo content, reused from
the earlier preview set. No new generated images were required. Jordan's profile
photo is a fictional member's chosen cat photo.

## Generated photo prompts

- `goldie.png`: Candid documentary-style portrait of a friendly orange tabby
  community cat on a leafy university campus; square-friendly framing; soft golden
  daylight; no people, logos, text, watermark, UI, or extra animals.
- `mimi.png`: Candid documentary-style portrait of a calm black-and-white tuxedo
  community cat on campus stone steps; square-friendly framing; soft overcast
  daylight; no people, logos, text, watermark, UI, or extra animals.
- `alex.png`: Candid documentary-style portrait of a gentle gray tabby community cat
  beside a low brick campus wall; square-friendly framing; soft morning daylight;
  no people, logos, text, watermark, UI, or extra animals.

The photos were generated with the built-in image-generation tool. The final App
Store preview frames were rendered from HTML/CSS and captured through Chromium so
all interface text remains exact and legible.
