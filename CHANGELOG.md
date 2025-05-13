* 1.7.3 (31 Oct 2024) changes:
  - Adds backward compatibility checks for
    - hooks management re LaTeX 2020-10-01 (`\AtBeginDocument` vs `\AddToHook{begindocument/before}) and 2021-11-15 (`\AfterPackage` vs `\AddToHook{package/.../after}`)
    - `simpleicons` re availability of new X (formerly Twitter) icon
    - ORCID icon availability before and after TL2019
  - Re-ordered some packages to avoid `xcolor` warning message in TL2024

* 1.7.2 (25 Aug 2024) changes:
  - Added `simpleicons` package to provide icon for X.com
  - Added `\xtwitter` to replace `\twitter`
* v1.7 (9 Aug 2023) changes:
  - `\itemmarker` and `\ratingmarker` renamed to `\cvItemMarker` and `\cvRatingMarker`
  - Added `\cvLocationMarker` and `\cvDateMarker` so that these icons in `\cvevent`
    can be re-defined
  - Added `\locationname` and `\datename` for replacement text of the location and date
    markers in `\cvevent`
  - Other tweaks with `accsupp` (with another bugfix in v1.7.1.)
* Added `\mynames{...}` to specify names to be highlighted in the publication list on 3 Nov 2022
* Starred `\NewInfoField*` command to handle Mastodon; Icons, `\cvskills`, `\wheelchart` have "copyable" text values; `\cvskill` supports numerical values {0.5, 1, ..., 4.5, 5} on 21 May 2021
* Moved `biblatex`-related code to `*.cfg` files for easier edit on 8 May 2021
* Removed dependency on `academicons` on 12 Apr 2021
* Clickable hyperlinked info fields added on 10 May 2020
* Sample file with new `paracol` layout added on 2 February 2020
