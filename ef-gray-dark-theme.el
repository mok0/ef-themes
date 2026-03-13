;;; ef-gray-dark-theme.el --- Legible dark theme with white, gray and black colors -*- lexical-binding:t -*-
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

(defconst ef-gray-dark-palette-partial
  '((cursor "#b5b5b5")
    (bg-main "#000000")
    (bg-dim "#141414")
    (bg-alt "#232323")
    (fg-main "#cbcbcb")
    (fg-dim "#7a7a7a")
    (fg-alt "#a6a6a6")
    (bg-active "#424242")
    (bg-inactive "#0d0d0d")
    (border "#484848")

    (red "#939393")
    (red-warmer "#9c9c9c")
    (red-cooler "#999999")
    (red-faint "#8d8d8d")
    (green "#7a7a7a")
    (green-warmer "#888888")
    (green-cooler "#808080")
    (green-faint "#828282")
    (yellow "#919191")
    (yellow-warmer "#929292")
    (yellow-cooler "#9d9d9d")
    (yellow-faint "#a6a6a6")
    (blue "#898989")
    (blue-warmer "#989898")
    (blue-cooler "#8d8d8d")
    (blue-faint "#8f8f8f")
    (magenta "#909090")
    (magenta-warmer "#ababab")
    (magenta-cooler "#9d9d9d")
    (magenta-faint "#9d9d9d")
    (cyan "#a2a2a2")
    (cyan-warmer "#a3a3a3")
    (cyan-cooler "#9b9b9b")
    (cyan-faint "#9b9b9b")

    (bg-red-intense "#5d5d5d")
    (bg-green-intense "#535353")
    (bg-yellow-intense "#5c5c5c")
    (bg-blue-intense "#585858")
    (bg-magenta-intense "#6e6e6e")
    (bg-cyan-intense "#676767")

    (bg-red-subtle "#373737")
    (bg-green-subtle "#2c2c2c")
    (bg-yellow-subtle "#373737")
    (bg-blue-subtle "#333333")
    (bg-magenta-subtle "#363636")
    (bg-cyan-subtle "#333333")

    (bg-added "#252525")
    (bg-added-faint "#191919")
    (bg-added-refine "#363636")
    (fg-added "#c3c3c3")

    (bg-changed "#292929")
    (bg-changed-faint "#1a1a1a")
    (bg-changed-refine "#3d3d3d")
    (fg-changed "#e2e2e2")

    (bg-removed "#262626")
    (bg-removed-faint "#191919")
    (bg-removed-refine "#3c3c3c")
    (fg-removed "#d0d0d0")

    (bg-mode-line-active "#303030")
    (fg-mode-line-active "#e1e1e1")
    (bg-completion "#242424")
    (bg-hover "#383838")
    (bg-hover-secondary "#343434")
    (bg-hl-line "#1a1a1a")
    (bg-paren-match "#474747")
    (bg-err "#222222") ; check with err
    (bg-warning "#292929") ; check with warning
    (bg-info "#222222") ; check with info
    (bg-region "#242424")))

(defconst ef-gray-dark-palette-mappings-partial
  '((err red-warmer)
    (warning yellow)
    (info green)

    (fg-link cyan)
    (fg-link-visited magenta)
    (name blue-warmer)
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
    (rx-backslash green-warmer) ; compare with `string'
    (rx-construct red)

    (accent-0 blue)
    (accent-1 magenta-warmer)
    (accent-2 green-cooler)
    (accent-3 red)

    (date-common green-cooler)
    (date-deadline red-warmer)
    (date-deadline-subtle red-faint)
    (date-event fg-alt)
    (date-holiday magenta)
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
    (prose-tag yellow-faint)
    (prose-todo red-warmer)
    (fg-prose-verbatim blue)

    (mail-cite-0 blue)
    (mail-cite-1 magenta-warmer)
    (mail-cite-2 green-cooler)
    (mail-cite-3 yellow-cooler)
    (mail-part magenta-faint)
    (mail-recipient blue-warmer)
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
    (rainbow-1 blue)
    (rainbow-2 magenta-warmer)
    (rainbow-3 cyan-cooler)
    (rainbow-4 yellow-cooler)
    (rainbow-5 magenta-cooler)
    (rainbow-6 red-cooler)
    (rainbow-7 green-warmer)
    (rainbow-8 yellow)))

(defcustom ef-gray-dark-palette-overrides nil
  "Overrides for `ef-gray-dark-palette'.

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

(defconst ef-gray-dark-palette
  (modus-themes-generate-palette
   ef-gray-dark-palette-partial
   nil
   nil
   (append ef-gray-dark-palette-mappings-partial ef-themes-palette-common)))

(modus-themes-theme
 'ef-gray-dark
 'ef-themes
 "Legible dark theme with black, white and gray colors."
 'dark
 'ef-gray-dark-palette
 nil
 'ef-gray-dark-palette-overrides)

;;; ef-gray-dark-theme.el ends here
