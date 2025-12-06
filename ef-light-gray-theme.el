;;; ef-light-gray-theme.el --- Legible light theme with white, gray and black colors -*- lexical-binding:t -*-

;; Copyright (C) 2022-2025  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Protesilaos Stavrou <info@protesilaos.com>
;; URL: https://github.com/protesilaos/ef-themes
;; Keywords: faces, theme, accessibility

;; This file is NOT part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The `ef-themes' are a collection of light and dark themes for GNU
;; Emacs whose goal is to provide colorful ("pretty") yet legible
;; options for users who want something with a bit more flair than the
;; `modus-themes' (also designed by me).

;;; Code:



(require 'ef-themes)

(defconst ef-light-gray-palette-partial
  '((cursor "#464646")
    (bg-main "#fefefe")
    (bg-dim "#ededed")
    (bg-alt "#d7d7d7")
    (fg-main "#1a1a1a")
    (fg-dim "#6e6e6e")
    (fg-alt "#606060")
    (bg-active "#acacac")
    (bg-inactive "#f8f8f8")
    (border "#c0c0c0")

    (red "#727272")
    (red-warmer "#737373")
    (red-cooler "#727272")
    (red-faint "#717171")
    (green "#585858")
    (green-warmer "#5f5f5f")
    (green-cooler "#636363")
    (green-faint "#656565")
    (yellow "#6b6b6b")
    (yellow-warmer "#6e6e6e")
    (yellow-cooler "#6f6f6f")
    (yellow-faint "#717171")
    (blue "#515151")
    (blue-warmer "#626262")
    (blue-cooler "#676767")
    (blue-faint "#575757")
    (magenta "#737373")
    (magenta-warmer "#797979")
    (magenta-cooler "#626262")
    (magenta-faint "#757575")
    (cyan "#636363")
    (cyan-warmer "#646464")
    (cyan-cooler "#676767")
    (cyan-faint "#646464")

    (bg-red-intense "#b1b1b1")
    (bg-green-intense "#bfbfbf")
    (bg-yellow-intense "#c5c5c5")
    (bg-blue-intense "#cfcfcf")
    (bg-magenta-intense "#b3b3b3")
    (bg-cyan-intense "#b9b9b9")

    (bg-red-subtle "#d9d9d9")
    (bg-green-subtle "#dddddd")
    (bg-yellow-subtle "#ebebeb")
    (bg-blue-subtle "#dadada")
    (bg-magenta-subtle "#e9e9e9")
    (bg-cyan-subtle "#e1e1e1")

    (bg-added "#e0e0e0")
    (bg-added-faint "#f3f3f3")
    (bg-added-refine "#d0d0d0")
    (fg-added "#353535")

    (bg-changed "#e4e4e4")
    (bg-changed-faint "#ececec")
    (bg-changed-refine "#d1d1d1")
    (fg-changed "#393939")

    (bg-removed "#e1e1e1")
    (bg-removed-faint "#eeeeee")
    (bg-removed-refine "#c4c4c4")
    (fg-removed "#474747")

    (bg-mode-line-active "#c4c4c4")
    (fg-mode-line-active "#101010")
    (bg-completion "#dcdcdc")
    (bg-hover "#d3d3d3")
    (bg-hover-secondary "#c6c6c6")
    (bg-hl-line "#e7e7e7")
    (bg-paren-match "#b9b9b9")
    (bg-err "#e2e2e2") ; check with err
    (bg-warning "#e9e9e9") ; check with warning
    (bg-info "#e1e1e1") ; check with info
    (bg-region "#e1e1e1")))

(defconst ef-light-gray-palette-mappings-partial
  '((err red-warmer)
    (warning yellow-warmer)
    (info green)

    (fg-link blue-warmer)
    (fg-link-visited magenta)
    (name magenta-cooler)
    (keybind blue-cooler)
    (identifier magenta-faint)
    (fg-prompt green-cooler)

    (builtin magenta)
    (comment yellow-faint)
    (constant blue-cooler)
    (fnname magenta-warmer)
    (fnname-call magenta-faint)
    (keyword magenta-cooler)
    (preprocessor red)
    (docstring cyan-faint)
    (string blue-warmer)
    (type green-cooler)
    (variable cyan-cooler)
    (variable-use cyan-faint)
    (rx-backslash green-cooler) ; compare with `string'
    (rx-construct magenta)

    (accent-0 blue-warmer)
    (accent-1 magenta-warmer)
    (accent-2 green-cooler)
    (accent-3 yellow-warmer)

    (date-common cyan-cooler)
    (date-deadline red)
    (date-deadline-subtle red-cooler)
    (date-event fg-alt)
    (date-holiday magenta-warmer)
    (date-now fg-main)
    (date-range fg-alt)
    (date-scheduled yellow)
    (date-scheduled-subtle yellow-faint)
    (date-weekday cyan)
    (date-weekend red-faint)

    (fg-prose-code magenta-warmer)
    (prose-done green)
    (fg-prose-macro green-cooler)
    (prose-metadata fg-dim)
    (prose-metadata-value fg-alt)
    (prose-table fg-alt)
    (prose-table-formula err)
    (prose-tag green-faint)
    (prose-todo red-warmer)
    (fg-prose-verbatim blue-warmer)

    (mail-cite-0 blue-warmer)
    (mail-cite-1 magenta)
    (mail-cite-2 cyan-cooler)
    (mail-cite-3 yellow-cooler)
    (mail-part cyan-warmer)
    (mail-recipient magenta-cooler)
    (mail-subject blue-cooler)
    (mail-other cyan)

    (bg-search-static bg-warning)
    (bg-search-current bg-yellow-intense)
    (bg-search-lazy bg-blue-intense)
    (bg-search-replace bg-red-intense)

    (bg-search-rx-group-0 bg-magenta-intense)
    (bg-search-rx-group-1 bg-green-intense)
    (bg-search-rx-group-2 bg-red-subtle)
    (bg-search-rx-group-3 bg-cyan-subtle)

    (bg-space-err bg-yellow-intense)

    (rainbow-0 green-cooler)
    (rainbow-1 blue-faint)
    (rainbow-2 magenta)
    (rainbow-3 cyan-cooler)
    (rainbow-4 yellow-cooler)
    (rainbow-5 magenta-cooler)
    (rainbow-6 red-cooler)
    (rainbow-7 green-cooler)
    (rainbow-8 yellow)))

(defcustom ef-light-gray-palette-overrides nil
  "Overrides for `ef-light-gray-palette'.

Mirror the elements of the aforementioned palette, overriding
their value.

For overrides that are shared across all of the Ef themes,
refer to `ef-themes-common-palette-overrides'.

To preview the palette entries, use `ef-themes-preview-colors' or
`ef-themes-preview-colors-current' (read the documentation for
further details)."
  :group 'ef-themes
  :package-version '(ef-themes . "1.0.0")
  :type '(repeat (list symbol (choice symbol string)))
  :link '(info-link "(ef-themes) Palette overrides"))

(defconst ef-light-gray-palette
  (modus-themes-generate-palette
   ef-light-gray-palette-partial
   nil
   nil
   (append ef-light-gray-palette-mappings-partial ef-themes-palette-common)))

(modus-themes-theme
 'ef-light-gray
 'ef-themes
 "Legible light theme with blue, magenta, cyan, purple colors."
 'light
 'ef-light-gray-palette
 nil
 'ef-light-gray-palette-overrides
 'ef-themes-custom-faces)

;;; ef-light-gray-theme.el ends here
