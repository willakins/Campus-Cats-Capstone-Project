# Campus Cats App Store listing answers

English (U.S.) copy and reusable answers for App Store Connect. Updated October 6, 2026. The current repository version is **1.3.1**. This document provides listing
copy; it does not establish that a build or backend change has shipped.

Use the text inside each code block as the field value. Character counts include
spaces and internal line breaks, excluding the final newline after each block.

## Field reference

| Field                      | Limit or format                                      | Default for this project                     |
| -------------------------- | ---------------------------------------------------- | -------------------------------------------- |
| Promotional Text           | 170 characters                                       | Evergreen copy below                         |
| Description                | 4,000 characters; plain text                         | Multi-campus description below               |
| What's New in This Version | 4,000 characters                                     | Version-specific 1.3.1 draft below           |
| Keywords                   | 100 UTF-8 bytes                                      | 94-byte English keyword list below           |
| Support URL                | Full public URL with actual contact information      | Existing contact-page fallback below         |
| Marketing URL              | Full URL to information about the app                | Configured public welcome route below        |
| Version                    | Marketing version matching the selected build        | `1.3.1`                                      |
| Copyright                  | Year rights were obtained, followed by rights holder | Confirm year and legal owner before entering |

Limits and field meanings follow Apple's [platform version information](https://developer.apple.com/help/app-store-connect/reference/app-information/platform-version-information),
checked October 6, 2026. The numbers displayed under an existing field in App Store
Connect may be its remaining allowance, rather than the maximum.

## Promotional Text

Recommended evergreen answer. **153 / 170 characters.**

```text
Meet your campus cats, report sightings, care for feeding stations, and connect with your club through chat, events, surveys, and presidential elections.
```

Keep this focused on the member experience. Refresh it for a real launch or campaign
when useful; Apple permits promotional-text updates without submitting a new app
version. Avoid advertising features that are still marked as coming soon.

## Description

Recommended answer for the current multi-campus product.
**1800 / 4,000 characters.**

```text
Know the cats. Care together.

Campus Cats brings your university's cat community together. Report sightings, help care for feeding stations, explore familiar feline faces, and stay connected with your club, all in one place.

REPORT CAT SIGHTINGS
Share a sighting with photos, a location, and notes about the cat's condition. Browse reported locations on the map and filter sightings by age.

MEET THE CAMPUS CATS
Explore the Cat-alog to learn names, markings, and stories. View photos and recorded sighting history, and choose a favorite cat.

COORDINATE EVERYDAY CARE
Authorized club volunteers can view feeding stations, check stock status, and record restocking updates to help plan the next visit.

STAY CONNECTED
Read club alerts and receive notifications for important updates. Join club chat, react to messages, and keep up with events and volunteer activities.

GIVE YOUR COMMUNITY A VOICE
Answer club surveys, participate in contests, and vote in presidential elections. Election tools support nominations and private ballots, with results available after voting closes.

MAKE YOUR CONTRIBUTIONS COUNT
Create a member profile, earn achievements, and choose a displayed title that celebrates your contributions.

SUPPORT YOUR CLUB
Discover your club's donation page when available and learn how to support its work.

BUILT FOR CAMPUS COMMUNITIES
Each club has its own workspace, branding, members, and records. Officers and presidents have tools to manage club content and membership.

GET STARTED
Campus Cats is invite-only. Select your university and use your club's approved sign-in or membership process. Available features depend on your club's setup and your role.

From a quick sighting to a regular restocking visit, every contribution helps your community care for its campus cats.
```

This replaces the older Georgia Tech-only positioning. Keep club-specific affiliation
claims for that club's own materials. The public listing should describe what a
member of any supported university club can do.

## What's New in This Version

### Version 1.3.1 draft

Use only after the client and required backend changes have shipped. The repository
version is 1.3.1; the production website was deployed from committed 1.3.0.
**317 / 4,000 characters.**

```text
- Club presidents can configure additional information for cat profiles, sightings, and feeding stations.
- The sightings map loads reports for the area and age filter you select, with Load more for additional results.
- Improved spacing on record details and more reliable retries when saving additional information.
```

Complete the rollout described in [custom-field release requirements](../docs/custom-fields.md#release-requirements)
before submitting this copy. Marketing-document edits and artwork are recorded in
the full changelog but omitted from member-facing What's New text.

### Version 1.3.0 reference

Use for the performance and security release described in [CHANGELOG.md](../CHANGELOG.md).
Confirm these changes are in the selected build and deployed backend.
**497 / 4,000 characters.**

```text
This update improves performance and strengthens account and club protections.

- Community sections load independently, so one slow section no longer holds up the others.
- Data loading reduces duplicate requests and runs independent requests together.
- Member profiles load the selected member's imported sightings more efficiently.
- Account access, club billing permissions, and sign-in validation have been strengthened.
- Changing accounts, clubs, or roles clears the previous billing view.
```

Additional-field forms and bounded map queries belong to the 1.3.1 draft above,
not the historical 1.3.0 release. Their backend rollout remains unconfirmed:

```text
- Club presidents can configure additional fields for cat profiles, sightings, and feeding stations.
- The sightings map loads by area and age, with a Load more option for additional results.
```

### Version 1.2.0 reference

**374 / 4,000 characters.**

```text
Campus Cats has a refreshed look.

- Updated cards, spacing, and shared controls create a more consistent experience.
- Reorganized member profiles make achievements and favorite cats easier to browse.
- Refreshed welcome and university-selection screens introduce you to your club.
- Improved university search scrolling keeps results accessible while the keyboard is open.
```

### Version 1.1.0 reference

**433 / 4,000 characters.**

```text
Campus Cats now supports university cat clubs beyond Georgia Tech.

- Join your club's own workspace with its branding, members, and records.
- Connect through club chat, events, surveys, and community voting.
- Participate in presidential nominations and private ballots.
- Explore your club's donation page when available.
- View club subscription status in the app, with billing management available to club presidents on the web.
```

For the initial 1.0.0 release, Apple does not provide a What's New field. On later
releases, replace the previous version's notes with the changes in that specific
version. The old announcement-notification and SSO text should not be reused for
1.3.0.

## Keywords

Recommended English answer. **94 / 100 bytes**
(and 94 characters, since this list is ASCII).

```text
university,stray,feral,feeding,volunteer,sightings,colony,tnr,animal,welfare,student,community
```

The list complements the name "Campus Cats" without repeating it. Use commas without
spaces between entries. Revisit terms after observing search performance; these
are relevant starting keywords, not a claim that they have been tested for conversion.
If the app subtitle already includes an important term, consider using that keyword
space for another relevant term. Keep company names and competing app names out of
the list. [Apple's product-page guidance](https://developer.apple.com/app-store/product-page/)
explains keyword formatting and discoverability.

## Support URL

Existing public contact-page fallback, based on the route and contact information in
the repository:

```text
https://campuscats-d7a5e.web.app/legal/terms
```

The Terms page includes a "Changes and contact" section that references the support
email configured in [platformInfo.json](../config/platformInfo.json):

```text
willakins23@gmail.com
```

This is a fallback, not a dedicated support center. A dedicated support page would
be clearer for users. If one is published at `/support`, update this answer to that
page's confirmed URL. Do not enter an email address or a `mailto:` link in the Support
URL field.

Verify the chosen page is deployed, accessible without signing in, and displays a
working, monitored contact method before submission. Live availability was not
verified while drafting this document.

## Marketing URL

Verified public Marketing URL:

```text
https://campuscats-d7a5e.web.app/welcome
```

The [welcome page](../app/welcome.tsx) introduces the app's cat discovery, care, and
community features. Deployed to production Firebase Hosting on October 6, 2026,
from committed release `4f4d98a` (version 1.3.0). A public Chromium check confirmed
the welcome heading, feature copy, and “Find your university” action render without
signing in. This URL is ready to use as the Marketing URL.
If a dedicated marketing website replaces it, use that site's actual public URL.
The Marketing URL is optional; it can be left blank until a suitable page is live.

## Version

Current repository answer:

```text
1.3.1
```

Match the submitted build's app version in [app.json](../app.json) and
[package.json](../package.json). The internal build number is a separate value.
Update this field and What's New together for the next release.

## Copyright

**Needs confirmation: the year the rights were obtained and the legal rights holder.**
The repository's support email and GitHub owner do not establish ownership of all
original capstone contributions.

Enter this pattern after replacing both placeholders:

```text
[YEAR RIGHTS WERE OBTAINED] [LEGAL COPYRIGHT OWNER]
```

Apple adds the copyright symbol automatically. Use the confirmed person's or
entity's name, rather than assuming that a club name, university name, or support
contact is the rights holder. Do not substitute the current release year for an
unknown ownership year. See Apple's [copyright field definition](https://developer.apple.com/help/app-store-connect/reference/app-information/platform-version-information).

## Reuse for the next submission

- Keep the description and promotional text aligned with the features actually available to members.
- Update the version and release-specific What's New text from the shipped change list.
- Preserve the invite-only access explanation and role restrictions.
- Describe recorded sightings as reports and history; do not imply continuous GPS tracking.
- Describe donation pages without implying that direct in-app donation payments are available.
- Add custom fields or new map behavior only after the relevant client, Functions, rules, and indexes are ready.
- Confirm the public URLs and copyright answer, then recheck field lengths after edits or localization.

For the matching header, search-results art, and portrait previews, see
[app-store/README.md](app-store/README.md).

For **iPhone with Dynamic Island (medium display)** screenshots, upload the eight
**1206 × 2622** PNGs in
[`assets/images/app_previews/apple/iphone-medium/`](../assets/images/app_previews/apple/iphone-medium/).
The **1320 × 2868** PNGs in [`apple/iphone-large/`](../assets/images/app_previews/apple/iphone-large/) belong to the
**large display** group and fail dimension validation in the medium-display slot.
Use the Screenshots area; App Preview slots require video files.

## App Information page

Use this section for **General → App Information**, including Localizable Information.
Values supplied from the existing App Store Connect page are recorded below; this
work did not change the live account. Recommendations reflect the current repository.

### Localizable Information: English (U.S.)

**Name: 11 / 30 characters**

```text
Campus Cats
```

**Subtitle: 28 / 30 characters**

```text
Care for campus cat colonies
```

The subtitle describes the core purpose without claiming an official university
endorsement. Apple permits up to 30 characters for each field. See [App information](https://developer.apple.com/help/app-store-connect/reference/app-information/app-information).

### General Information

| Field              | Answer                             | Evidence or action                                                                                                                           |
| ------------------ | ---------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| Bundle ID          | `com.gatech.CampusCats`            | Matches `expo.ios.bundleIdentifier` in [app.json](../app.json). Preserve the identifier for this existing app, including its capitalization. |
| SKU                | `campus-cats`                      | Existing App Store Connect value supplied by the owner; internal tracking identifier.                                                        |
| Apple ID           | `6744487550`                       | Existing Apple-assigned value supplied by the owner; not an editable marketing field.                                                        |
| Primary Language   | English (U.S.)                     | Keep for this English listing.                                                                                                               |
| License Agreement  | Apple's Standard License Agreement | Keep the existing selection unless the owner adopts a reviewed custom EULA. The app's service Terms remain a separate document.              |
| Primary Category   | Social Networking                  | Recommended: club chat, member profiles, events, surveys, and community participation are central features.                                  |
| Secondary Category | Lifestyle                          | Optional recommendation: everyday community-cat care and volunteering.                                                                       |

Category choices are recommendations for the owner to enter, not existing account
settings verified remotely. Compare with [Apple's category guidance](https://developer.apple.com/app-store/categories/).
Do not select Games, Medical, or Health & Fitness simply because the app has contests
or records a cat's condition.

### Content Rights

**Recommended selection: the option confirming that the app contains, shows, or
accesses third-party content and that you have the necessary rights.**

The pasted selection, “No, this app does not contain, show, or access third-party
content,” does not describe the current implementation. Campus Cats displays
member-submitted photos and text, plus imported iNaturalist observations, comments,
and licensed photos. Public availability alone does not establish permission.

Before making the rights confirmation, check the actual content and its permissions,
including imported photo licenses, attribution, club logos, and user uploads. The
importer's license filtering is documented in [iNaturalist import operations](../docs/inaturalist-import.md);
it is evidence of safeguards, not a blanket rights certification.
[Apple's content-rights definition](https://developer.apple.com/help/app-store-connect/reference/app-information/app-information)
requires appropriate rights or other lawful permission in the distribution regions.

### Age Ratings

**Revisit the questionnaire; do not carry forward 4+ automatically.** The current
[Terms](../presentation/legal/legalDocuments.ts) require users to be at least 13.
Apple calculates ratings from the questionnaire and provides an override for minimum
age requirements that exceed the calculated rating. For OS 26 and later, choose
**13+ or a higher calculated rating** to reflect the current minimum-age policy;
review the generated regional and older-OS ratings rather than copying them manually.
See [Set an app age rating](https://developer.apple.com/help/app-store-connect/manage-app-information/set-an-app-age-rating).

Starting answers to verify against the submitted build:

| Questionnaire topic                                                            | Answer or review instruction                                                                                                         |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| User-Generated Content                                                         | Yes: sightings, images, comments, profiles, and chat.                                                                                |
| Messaging and Chat                                                             | Yes: club chat.                                                                                                                      |
| Made for Kids                                                                  | No: the product serves university clubs and its Terms set a 13-year minimum.                                                         |
| Parental Controls                                                              | No dedicated parental controls identified. Club roles and officer moderation do not establish parental controls.                     |
| Age Assurance                                                                  | No age-verification mechanism confirmed. A minimum age in the Terms alone does not establish one.                                    |
| Advertising                                                                    | No ad network or advertising feature identified; confirm actual club content and the submitted build.                                |
| Unrestricted Web Access                                                        | Review how external links open. Linking to specified donation or source pages alone does not establish an unrestricted browser.      |
| Contests                                                                       | Review the live contest feature and its actual frequency; do not answer None solely because the app is not a game.                   |
| Gambling, simulated gambling, loot boxes                                       | No such mechanics identified. Club donations and presidential elections are not evidence of gambling.                                |
| Medical or Treatment Information                                               | No veterinary advice feature identified. Cat health observations alone do not establish treatment guidance.                          |
| Violence, sexual content, profanity, substances, and other content descriptors | Review actual accessible club and imported content plus moderation. Do not infer all answers are None from the app's cat-care theme. |

These are starting answers, not a completed questionnaire or an assigned rating.
Use [Apple's rating definitions](https://developer.apple.com/help/app-store-connect/reference/app-information/age-ratings-values-and-definitions)
when evaluating each descriptor. The old 4+, Brazil All, Korea 00+, and other regional
values in the pasted page are existing results, not recommendations for the next release.

**Age Suitability URL:** leave blank unless a public page specifically explains age
suitability. This field is optional. The Terms contain an age policy, but a dedicated
age-suitability page has not been confirmed.

### App Tags

Review the tags Apple offers and retain only those matching the core experience:

| Tag from the existing page | Recommended action                                                                          |
| -------------------------- | ------------------------------------------------------------------------------------------- |
| Social Networking          | Keep: club chat and community participation.                                                |
| Camera Apps                | Deselect: taking a sighting photo is a supporting feature, not the app's central purpose.   |
| Live-Streaming             | Deselect: no live-streaming feature identified.                                             |
| Photo Filters              | Deselect: no creative photo-filter feature identified.                                      |
| Photos                     | Deselect: the app uses photos for cat records rather than being a photo-management product. |

Apple generates tags from metadata and curation; you can deselect proposed tags.
This is not a free-form keyword field. See [Manage app tags](https://developer.apple.com/help/app-store-connect/manage-app-information/manage-app-tags).

### App Encryption Documentation

Current repository configuration in [app.json](../app.json):

```json
"ITSAppUsesNonExemptEncryption": false
```

This declares **no non-exempt encryption**, not “the app uses no encryption.” Network
connections still use HTTPS. No proprietary encryption feature was identified in
this review. Keep the value only if the submitted binary and included SDKs qualify
for the exemption; inspect the generated iOS Info.plist and confirm the build's
actual cryptography before submission. Source configuration alone is not a completed
binary or export-compliance audit.

**Upload:** no documentation is proposed based on the existing exemption declaration.
If the build contains non-exempt encryption, follow Apple's questionnaire, supply
required documentation, and update the declaration accordingly. See [Overview of export compliance](https://developer.apple.com/help/app-store-connect/manage-app-information/overview-of-export-compliance).

### App Store Regulations & Permits

| Field                            | Answer or action                                                                                                                                                                                                                                                             |
| -------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Digital Services Act             | Account owner must determine and enter trader status and complete any required verification. It cannot be established from the repository. Paid club subscriptions are relevant to this assessment; a free download or capstone origin does not establish non-trader status. |
| China Mainland ICP Filing Number | No verified filing number was supplied. If distributing in mainland China, resolve the applicable filing requirements before enabling availability. Enter only the actual registered number; do not invent one or treat a blank field as proof of exemption.                 |
| Vietnam Game License             | Not applicable to the current non-game product. Reassess if the app becomes a game.                                                                                                                                                                                          |
| Regulated Medical Devices        | Current functionality is community coordination, not a regulated medical-device feature. If a declaration is requested, use No for this implementation after confirming the submitted functionality; reassess if medical features or categories change.                      |

DSA guidance: [Manage EU trader requirements](https://developer.apple.com/help/app-store-connect/manage-compliance-information/manage-european-union-digital-services-act-trader-requirements).
Regional permit guidance: [App information](https://developer.apple.com/help/app-store-connect/reference/app-information/app-information).
Medical declaration guidance: [Declare regulated medical-device status](https://developer.apple.com/help/app-store-connect/manage-app-information/declare-regulated-medical-device-status).
Account status, distribution regions, and permits require owner verification.

### App Store Server Notifications

| Field                 | Current answer                                                             |
| --------------------- | -------------------------------------------------------------------------- |
| Production Server URL | Leave unset for the current Stripe-based club subscription implementation. |
| Sandbox Server URL    | Leave unset for the current implementation.                                |

The current club billing integration uses Stripe; no Apple StoreKit purchasing or
App Store transaction-notification handler was identified. Do not paste the Stripe
webhook, Firebase app URL, or support page into these fields. This recommendation
only concerns these integration fields; it does not certify App Review compliance
of the purchasing model.

If Apple In-App Purchases are introduced, implement and test a dedicated App Store
notification receiver before entering its production and sandbox URLs.
See [Enter server URLs for App Store Server Notifications](https://developer.apple.com/help/app-store-connect/configure-in-app-purchase-settings/enter-server-urls-for-app-store-server-notifications).

### App-Specific Shared Secret

**Current answer: no action needed for the current Stripe integration.** This Apple
credential is used for legacy receipt verification of auto-renewable Apple subscriptions;
it is unrelated to the Stripe API key or webhook secret. Do not place secret values
in this document, source control, screenshots, or public metadata. If Apple receipt
verification is implemented later, manage any required credentials in the server's
secret store. See [Generate a shared secret](https://developer.apple.com/help/app-store-connect/configure-in-app-purchase-settings/generate-a-shared-secret-to-verify-receipts).

## App Privacy page

**Recommended collection answer: Yes, this app collects data.** Replace the existing
“Data Not Collected” declaration for a release using the current implementation.
Firebase authentication, stored member profiles, uploads, chat, and submitted sighting
coordinates establish collection. Collection for core functionality still counts.

This section maps repository evidence to proposed answers. Confirm the submitted
mobile build, deployed services, SDK behavior, and actual data uses before publishing.
It does not change the live App Store label.

### Privacy Policy: English (U.S.)

**Privacy Policy URL: recommended replacement after verifying public deployment**

```text
https://campuscats-d7a5e.web.app/legal/privacy
```

This [public route](../app/legal/privacy.tsx) renders the current policy from
[legalDocuments.ts](../presentation/legal/legalDocuments.ts). It describes multi-club
accounts, location submissions, community content, billing, integrations, providers,
retention, and privacy rights. The existing FreePrivacyPolicy URL is the previously
supplied account value; do not assume it stays synchronized with this source policy.
Verify that the replacement loads without signing in and matches actual operations.
Use the new-version workflow shown by App Store Connect to replace the policy URL.

**User Privacy Choices URL: recommended after verifying public deployment**

```text
https://campuscats-d7a5e.web.app/legal/account-deletion
```

The [account-deletion page](../app/legal/account-deletion.tsx) explains in-app deletion,
requests when unable to sign in, and what is removed. It links to the policy's broader
privacy choices. This optional field can remain blank until the public page is
confirmed live. See [Apple's App Privacy field reference](https://developer.apple.com/help/app-store-connect/reference/app-information/app-privacy).

### Data Types: recommended selections

For the confirmed selections below, select **App Functionality** as the purpose,
**Yes, linked to the user's identity**, and **No, not used for tracking**, subject to
confirming the actual provider practices. Account IDs and server participation
receipts establish linkage even when other club members cannot see the identity.

| Apple data type                        | Recommended selection and repository evidence                                                                                                        |
| -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| Contact Info → Name                    | Select. Profiles and membership or club-setup requests contain submitted names.                                                                      |
| Contact Info → Email Address           | Select. Authentication, membership, account administration, and billing contacts use email addresses.                                                |
| Location → Precise Location            | Select. A member can submit precise device-derived coordinates with an attributed sighting. This does not imply continuous tracking.                 |
| User Content → Photos or Videos        | Select. Profile, sighting, catalog, and other club images are uploaded to hosted storage. The category includes photos even without a video feature. |
| User Content → Emails or Text Messages | Select. Club chat stores messages and sender identity.                                                                                               |
| User Content → Other User Content      | Select. Bios, sighting notes, comments, surveys, nominations, ballots, and other submitted club content are retained.                                |
| Identifiers → User ID                  | Select. Firebase account IDs, display handles, membership identity, and optionally linked iNaturalist IDs identify accounts.                         |
| Usage Data → Product Interaction       | Select. Reactions, favorites, alert read state, participation receipts, and contribution-based achievements retain account activity.                 |

Evidence: [domain models](../core/domain/models.ts),
[Firebase session and push-token storage](../adapters/firebase/FirebaseSession.ts),
[community schemas](../core/domain/community.ts), and the current
[privacy policy source](../presentation/legal/legalDocuments.ts).

### Data Types: provider and build checks before finalizing

These require a decision based on the shipped iOS flow and retained provider data,
rather than an automatic No or an assumption that every SDK collects every type.

| Apple data type                             | Proposed answer and what to verify                                                                                                                                                                                                                                                                     |
| ------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Identifiers → Device ID                     | Select if retained Expo/APNs push tokens or SDK installation identifiers identify a device. Push tokens are stored against accounts, so treat them as linked. Purpose: App Functionality; tracking: No unless provider practices establish otherwise.                                                  |
| Diagnostics → Other Diagnostic Data         | Select if retained app-originated errors, security logs, device/app metadata, or service request diagnostics are accessible to Campus Cats or its providers. The policy describes these logs. Check retention and identity linkage; do not assume they are anonymous. Purpose: App Functionality.      |
| Diagnostics → Crash Data / Performance Data | Verify Expo, Firebase, and the generated build's SDK configuration. No explicit Sentry, Crashlytics, or analytics integration was identified in application source; that does not establish what every shipped SDK retains. Select the relevant subtype if collected.                                  |
| Purchases → Purchase History                | Select if club subscription state, invoices, or purchase records are collected from the mobile experience or its integrated services and linked to the administrator. Separate web-only purchases from data actually collected through the app. Purpose: App Functionality.                            |
| Financial Info → Payment Info               | Do not select merely because Stripe is used. Determine whether payment details are entered outside the app and inaccessible to the developer, or are collected through an integrated app/webview flow or accessible provider records. Not storing full card numbers alone does not settle this answer. |
| User Content → Customer Support             | Select if support submissions from the app are retained and do not satisfy Apple's optional-disclosure criteria. Review the actual email/contact workflow.                                                                                                                                             |
| Other Data Types                            | Review membership graduation year, administrative verification information, and account moderation records that do not fit the selected categories. If separately collected, declare this category with App Functionality and the actual linkage.                                                      |
| Location → Coarse Location                  | Add if approximate user/device location is retained by the app or providers. A precise-location disclosure does not automatically cover separately collected coarse location. Review maps and IP-based location use.                                                                                   |

For IP addresses, classify according to actual use, such as diagnostics or derived
location. For diagnostics that retain an account or device identifier, answer linked:
Yes. Only use linked: No when verified protections prevent identity linkage before
collection and later re-identification.

### Purposes, identity linkage, and tracking

The repository supports **App Functionality** for authentication, club operations,
notifications, security, billing access, and troubleshooting. Add **Product
Personalization** for data actually used to customize the experience, such as a chosen
favorite cat or displayed achievement title. Add **Analytics** only where data is used
to evaluate behavior or product effectiveness; operating a feature or metering a bill
alone is not evidence of that purpose. Do not select advertising or Other Purposes
without an actual use supporting them.

**Tracking: recommended No for every selected type**, based on current source and the
policy's statements that the service does not use targeted advertising or sell data.
Reconfirm SDK and partner uses. Account-linked collection and sharing with infrastructure
providers do not by themselves establish Apple's advertising-related tracking.

Anonymous surveys and private ballots still have server-side, account-linked receipts.
Their privacy from ordinary officer screens does not establish Apple's “not linked”
classification. Use linked: Yes for the encompassing content and activity categories.

### Types without an identified collection feature

No dedicated collection feature was identified for phone numbers, address-book
contacts, audio recordings, human health/fitness records, credit information,
browsing history, retained search history, advertising data, environment scanning,
or hand/head motion. Do not select these solely because the app has a camera,
a search field, external links, or animal-health notes. Recheck integrated providers
and future functionality. Club membership is not the same as uploading a device's
address book. Free-form text belongs under Other User Content rather than every
possible sensitive fact a user could type; targeted requests for sensitive information
or new custom-field definitions need a fresh review.

### Product Page Preview and publishing

Expect **Data Linked to You** after the confirmed account-linked categories are entered.
Additional sections depend on the finalized SDK and provider assessment. The preview
is generated by App Store Connect; do not paste a hand-written privacy label into it.
The present **Data Not Collected** preview should no longer describe the current app.

Apple's [App Privacy Details guidance](https://developer.apple.com/app-store/app-privacy-details/)
provides the collection, purposes, linkage, tracking, and optional-disclosure rules.
Core submissions such as sightings and chat are not exempt simply because participation
is optional. Include partner collection and confirm each selected type's purposes,
linkage, and tracking answer. Privacy-label answers can be updated without an app
update; distinguish this from the policy-URL version workflow shown on this page.
Privacy manifests and permission prompts do not replace the App Store declarations.

Before publishing, confirm public policy URLs, the submitted build's SDK inventory,
provider retention and uses, and consistency with the policy. Complete unresolved
rows, then inspect App Store Connect's generated preview. This document records
recommended answers, not a published label or a completed provider audit.

## App Accessibility page

**Current recommendation: keep iPhone and iPad support unindicated until their native
accessibility evaluations are complete.** Do not select Yes solely from source code
or browser screenshots. Do not select No merely because evaluation is incomplete:
“No features supported” is a different claim from “Support Not Yet Indicated.”

Apple requires users to be able to complete all common tasks with a claimed feature,
and support must be assessed separately for each device family. See [Accessibility
Nutrition Labels overview](https://developer.apple.com/help/app-store-connect/manage-app-accessibility/overview-of-accessibility-nutrition-labels).

### iPhone Support and iPad Support

Both device families have the same evidence status today. The app enables iPad support
in [app.json](../app.json), but that configuration does not certify accessibility.
The prior [verification record](../docs/verification-checklist.md) covers browser
layouts, dark appearance, and simulated 200-percent text scaling with fictional data.
Native VoiceOver, Voice Control, OS text scaling, keyboards, and live map-provider
behavior remain unverified. Browser checks are useful supporting evidence, not a
completed iOS/iPadOS accessibility audit.

| Feature                           | Current answer for both devices           | Evidence and requirement before selecting support                                                                                                                                                                                                                                                                                           |
| --------------------------------- | ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| VoiceOver                         | Pending; do not claim yet                 | Shared controls expose labels, roles, and states. Verify native reading and focus order, forms and errors, map/location selection, galleries, dialogs, chat updates, and completion of all common tasks without sight.                                                                                                                      |
| Voice Control                     | Pending; do not claim yet                 | Button labels exist, but no native voice-navigation evaluation is recorded. Verify control names, activation, dictation, scrolling, dismissals, and navigation through all common tasks.                                                                                                                                                    |
| Larger Text                       | Pending; do not claim yet                 | Shared `AppText` permits scaling up to 2× and browser layouts were checked at simulated 200 percent. Verify actual iOS/iPadOS accessibility text sizes, all controls and forms, keyboard-visible states, and common tasks without losing content or actions.                                                                                |
| Dark Interface                    | Pending native confirmation               | Light/dark themes follow the system appearance and dark browser layouts were checked. Verify the released native screens, maps, image pickers, overlays, inputs, and role-specific flows in Dark Mode.                                                                                                                                      |
| Differentiate Without Color Alone | Pending full audit                        | Status text and icons provide supporting cues. Check maps, station status, health/feeding indicators, validation, voting results, and selected states for any meaning conveyed only by color.                                                                                                                                               |
| Sufficient Contrast               | Pending full audit                        | Theme tests check selected text pairs and adjusted brand colors. Evaluate actual text and icons, disabled/selected states, images and glass surfaces, maps, and club branding in both appearances. Token tests alone do not cover every rendered combination.                                                                               |
| Reduced Motion                    | Pending full audit                        | The theme observes Reduce Motion; shared buttons, loading, toast, screen transitions, and overlays use it. The favorite-cat picker still declares a slide animation without consulting that preference. Review it against the criteria and verify navigation, maps, gestures, and other native/provider animations before claiming support. |
| Captions                          | Do not select for the current feature set | No in-app spoken audio/video feature or caption pipeline was identified. Ordinary chat text and photo labels do not establish caption support. Reassess if audio/video content is added.                                                                                                                                                    |
| Audio Descriptions                | Do not select for the current feature set | No in-app video narration feature was identified. Image accessibility labels and VoiceOver are separate from narrated descriptions of time-based video content.                                                                                                                                                                             |

Source evidence: [typography](../presentation/ui/Typography.tsx),
[theme and Reduce Motion provider](../theme/AppThemeProvider.tsx),
[theme tests](../theme/theme.test.tsx), and
[favorite-cat picker](../presentation/screens/profiles/components/FavoriteCatField.tsx).
These are implementation observations, not certifications or completed device tests.

Detailed criteria: [Larger Text](https://developer.apple.com/help/app-store-connect/manage-app-accessibility/larger-text-evaluation-criteria),
[Sufficient Contrast](https://developer.apple.com/help/app-store-connect/manage-app-accessibility/sufficient-contrast-evaluation-criteria),
[Captions](https://developer.apple.com/help/app-store-connect/manage-app-accessibility/captions-evaluation-criteria), and
[Audio Descriptions](https://developer.apple.com/help/app-store-connect/manage-app-accessibility/audio-descriptions-evaluation-criteria).

### Common tasks to evaluate on each device

Use the release candidate and test accounts covering Member and administrative roles.
Record device, OS, app version/build, enabled settings, tester, date, and failures.

- Complete onboarding, university selection, membership requests, email login, supported SSO, password reset, and logout.
- Browse the map, select locations, filter and paginate sightings, and open details.
- Create and edit sightings, select/upload photos, use additional fields when available, and recover from validation or network errors.
- Browse/search the Cat-alog, view photos and history, and select a favorite cat.
- Read feeding-station information and complete authorized stock updates.
- Read alerts, use chat and comments, and participate in events, surveys, contests, and elections.
- Manage profile, account, permissions, privacy information, and account deletion.
- Complete relevant club administration and any purchase or subscription flow available in that device's app.

Include empty, loading, error, permission-denied, modal, and keyboard-visible states.
For iPad, include supported orientations and window sizes. For contrast, include
Bold Text, Increase Contrast, and Reduce Transparency as described in Apple's
criteria. For Larger Text, use the system text-size settings rather than only a
browser font-size simulation.

### Accessibility URL

**Current answer: leave blank.** No dedicated public accessibility-information route
was identified. Do not enter a nonexistent `/accessibility` URL, a local Markdown
file, or a generic policy page as though it describes tested support.

Once a public page is created and deployed, it can explain supported settings,
verified device/build combinations, known limitations, and the accessibility contact
method. Use `willakins23@gmail.com` as the currently configured contact, after
confirming it is monitored. Enter the page's verified public URL here.

### Drafts and Publish

After evaluation, use **Add iPhone Support** and **Add iPad Support** separately. If
at least one feature meets the criteria on a device, answer Yes and select only the
verified features. Answer No only after establishing that none qualify. Preserve
an unindicated status while evidence is incomplete.

Save the answers as drafts, then publish the verified device entries when ready.
The labels describe the live app, so do not publish claims based only on unreleased
local changes. Only device families with a live App Store version can be published.
See [Manage Accessibility Nutrition Labels](https://developer.apple.com/help/app-store-connect/manage-app-accessibility/manage-accessibility-nutrition-labels).
No accessibility answers or URL were published as part of this document update.
