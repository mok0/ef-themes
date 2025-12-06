;;; ef-test-theme.el --- Legible light theme with blue, magenta, cyan, purple colors -*- lexical-binding:t -*-

;; Copyright (C) 2022-2024  Free Software Foundation, Inc.

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



(eval-and-compile
  (require 'ef-themes)

;;;###theme-autoload
  (deftheme ef-test
    "Legible light theme with blue, magenta, cyan, purple colors."
    :background-mode 'light
    :kind 'color-scheme
    :family 'ef)

  (defconst ef-test-palette
    '(
;;; Basic values

      (bg-main     "#ffffff")
      (fg-main     "#1f1f1f")
      (bg-dim      "#f0f0f0")
      (fg-dim      "#7e7e7e")
      (bg-alt      "#dedede")
      (fg-alt      "#777777")

      (bg-active   "#bababa")
      (bg-inactive "#f9f9f9")

;;; Basic hues for foreground values

      (red             "#787878")
      (red-warmer      "#787878")
      (red-cooler      "#777777")
      (red-faint       "#787878")
      (green           "#727272")
      (green-warmer    "#787878")
      (green-cooler    "#7f7f7f")
      (green-faint     "#787878")
      (yellow          "#787878")
      (yellow-warmer   "#787878")
      (yellow-cooler   "#787878")
      (yellow-faint    "#7c7c7c")
      (blue            "#5b5b5b")
      (blue-warmer     "#6d6d6d")
      (blue-cooler     "#757575")
      (blue-faint      "#646464")
      (magenta         "#787878")
      (magenta-warmer  "#7c7c7c")
      (magenta-cooler  "#6d6d6d")
      (magenta-faint   "#7e7e7e")
      (cyan            "#757575")
      (cyan-warmer     "#767676")
      (cyan-cooler     "#7b7b7b")
      (cyan-faint      "#767676")

;;; Basic hues for background values

      (bg-red-intense     "#b5b5b5")
      (bg-green-intense   "#d2d2d2")
      (bg-yellow-intense  "#cfcfcf")
      (bg-blue-intense    "#d6d6d6")
      (bg-magenta-intense "#b5b5b5")
      (bg-cyan-intense    "#c7c7c7")

      (bg-red-subtle      "#dddddd")
      (bg-green-subtle    "#ebebeb")
      (bg-yellow-subtle   "#f2f2f2")
      (bg-blue-subtle     "#e1e1e1")
      (bg-magenta-subtle  "#eaeaea")
      (bg-cyan-subtle     "#e9e9e9")

;;; Diffs

      (bg-added          "#eaeaea")
      (bg-added-faint    "#f8f8f8")
      (bg-added-refine   "#dedede")
      (fg-added          "#494949")

      (bg-changed        "#eaeaea")
      (bg-changed-faint  "#f0f0f0")
      (bg-changed-refine "#d9d9d9")
      (fg-changed        "#464646")

      (bg-removed        "#e4e4e4")
      (bg-removed-faint  "#efefef")
      (bg-removed-refine "#c9c9c9")
      (fg-removed        "#4d4d4d")

;;; Graphs

      (bg-graph-red-0     "#a3a3a3")
      (bg-graph-red-1     "#c7c7c7")
      (bg-graph-green-0   "#b0b0b0")
      (bg-graph-green-1   "#d8d8d8")
      (bg-graph-yellow-0  "#d8d8d8")
      (bg-graph-yellow-1  "#f6f6f6")
      (bg-graph-blue-0    "#a0a0a0")
      (bg-graph-blue-1    "#c6c6c6")
      (bg-graph-magenta-0 "#adadad")
      (bg-graph-magenta-1 "#e1e1e1")
      (bg-graph-cyan-0    "#cbcbcb")
      (bg-graph-cyan-1    "#e7e7e7")

;;; Special hues

      (bg-mode-line       "#cecece")
      (fg-mode-line       "#111111")
      (bg-completion      "#e5e5e5")
      (bg-hover           "#e1e1e1")
      (bg-hover-secondary "#cccccc")
      (bg-hl-line         "#ededed")
      (bg-paren           "#bdbdbd")
      (bg-err             "#e3e3e3") ; check with err
      (bg-warning         "#ededed") ; check with warning
      (bg-info            "#eaeaea") ; check with info

      (border        "#cacaca")
      (cursor        "#4f4f4f")
      (fg-intense    "#000000")

      (modeline-err     "#535353")
      (modeline-warning "#383838")
      (modeline-info    "#404040")

      (underline-err     "#808080")
      (underline-warning "#828282")
      (underline-info    "#9f9f9f")

      (bg-char-0 "#dedede")
      (bg-char-1 "#cccccc")
      (bg-char-2 "#e7e7e7")

;;; Mappings

;;;; General mappings

      (bg-fringe unspecified)
      (fg-fringe unspecified)

      (err red-warmer)
      (warning yellow-warmer)
      (info green)

      (link blue-warmer)
      (link-alt magenta)
      (name magenta-cooler)
      (keybind blue-cooler)
      (identifier magenta-faint)
      (prompt green-cooler)

      (bg-region "#e9e9e9")
      (fg-region unspecified)

;;;; Code mappings

      (builtin magenta)
      (comment yellow-faint)
      (constant blue-cooler)
      (fnname magenta-warmer)
      (keyword magenta-cooler)
      (preprocessor red)
      (docstring cyan-faint)
      (string blue-warmer)
      (type green-cooler)
      (variable cyan-cooler)
      (rx-escape green-cooler) ; compare with `string'
      (rx-construct magenta)

;;;; Accent mappings

      (accent-0 blue-warmer)
      (accent-1 magenta-warmer)
      (accent-2 green-cooler)
      (accent-3 yellow-warmer)

;;;; Date mappings

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

;;;; Prose mappings

      (prose-code magenta-warmer)
      (prose-done green)
      (prose-macro green-cooler)
      (prose-metadata fg-dim)
      (prose-metadata-value fg-alt)
      (prose-table fg-alt)
      (prose-table-formula err)
      (prose-tag green-faint)
      (prose-todo red-warmer)
      (prose-verbatim blue-warmer)

;;;; Mail mappings

      (mail-cite-0 blue-warmer)
      (mail-cite-1 magenta)
      (mail-cite-2 cyan-cooler)
      (mail-cite-3 yellow-cooler)
      (mail-part cyan-warmer)
      (mail-recipient magenta-cooler)
      (mail-subject blue-cooler)
      (mail-other cyan)

;;;; Search mappings

      (bg-search-match bg-warning)
      (bg-search-current bg-yellow-intense)
      (bg-search-lazy bg-blue-intense)
      (bg-search-replace bg-red-intense)

      (bg-search-rx-group-0 bg-magenta-intense)
      (bg-search-rx-group-1 bg-green-intense)
      (bg-search-rx-group-2 bg-red-subtle)
      (bg-search-rx-group-3 bg-cyan-subtle)

;;;; Space mappings

      (bg-space unspecified)
      (fg-space border)
      (bg-space-err bg-yellow-intense)

;;;; Tab mappings

      (bg-tab-bar      bg-alt)
      (bg-tab-current  bg-main)
      (bg-tab-other    bg-active)

;;;; Terminal mappings

      (bg-term-black           "black")
      (fg-term-black           "black")
      (bg-term-black-bright    "gray35")
      (fg-term-black-bright    "gray35")

      (bg-term-red             red-cooler)
      (fg-term-red             red-cooler)
      (bg-term-red-bright      red-warmer)
      (fg-term-red-bright      red-warmer)

      (bg-term-green           green)
      (fg-term-green           green)
      (bg-term-green-bright    green-warmer)
      (fg-term-green-bright    green-warmer)

      (bg-term-yellow          yellow)
      (fg-term-yellow          yellow)
      (bg-term-yellow-bright   yellow-cooler)
      (fg-term-yellow-bright   yellow-cooler)

      (bg-term-blue            blue-warmer)
      (fg-term-blue            blue-warmer)
      (bg-term-blue-bright     blue-cooler)
      (fg-term-blue-bright     blue-cooler)

      (bg-term-magenta         magenta)
      (fg-term-magenta         magenta)
      (bg-term-magenta-bright  magenta-cooler)
      (fg-term-magenta-bright  magenta-cooler)

      (bg-term-cyan            cyan)
      (fg-term-cyan            cyan)
      (bg-term-cyan-bright     cyan-cooler)
      (fg-term-cyan-bright     cyan-cooler)

      (bg-term-white           "gray65")
      (fg-term-white           "gray65")
      (bg-term-white-bright    "white")
      (fg-term-white-bright    "white")

;;;; Rainbow mappings

      (rainbow-0 green-cooler)
      (rainbow-1 blue-faint)
      (rainbow-2 magenta)
      (rainbow-3 cyan-cooler)
      (rainbow-4 yellow-cooler)
      (rainbow-5 magenta-cooler)
      (rainbow-6 red-cooler)
      (rainbow-7 green-cooler)
      (rainbow-8 yellow))
    "The `ef-test' palette.
Color values have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a color that already exists
in the palette and is associated with a HEX-VALUE.")

  (defcustom ef-test-palette-overrides nil
    "Overrides for `ef-test-palette'.

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

  (ef-themes-theme ef-test ef-test-palette ef-test-palette-overrides)

  (provide-theme 'ef-test))

;;; ef-test-theme.el ends here
