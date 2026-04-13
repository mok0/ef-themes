;; ef-smyx-light-theme.el --- Legible light theme with orange, cyan, green, blue colors. -*- lexical-binding:t -*-

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

(defconst ef-smyx-light-palette-partial
  '((cursor "#ffa500")
    (bg-main "#fffaf0")  ;; floralwhite
    (bg-dim "#f0ece0")
    (bg-alt "#c4d7f7")
    (fg-main "#242521")
    (fg-dim "#59786f")
    (fg-alt "#7f475a")
    (fg-active "#4b3f47")
    (fg-inactive "#191317")
    (bg-active "#c5c3b8")
    (bg-inactive "#eee7e0")
    (border "#c4c0b6")

    (red "#ef6360")
    (red-warmer "#c10")
    (red-cooler "#fe5a7a")
    (red-faint "#d56f72")
    (orange "#ee6600")
    (orange-warmer "#cc8800")
    (orange-dark "#c04e01")
    (green "#0faa26")
    (green-warmer "#6aad0f")
    (green-cooler "#00a692")
    (green-faint "#4a8e00")
    (green-light "#1ea810")
    (yellow "#ffe523")
    (yellow-warmer "#ffd500")
    (yellow-cooler "#e4d00a")
    ;;(yellow-faint "#ffe523")
    (yellow-faint "#ffab0a")
    (blue "#3f95f6")
    (blue-warmer "#6a9fff")
    (blue-cooler "#029fff")
    (blue-faint "#7a94df")
    (blue-light "#126a8a")
    (blue-dark "#214761")
    (magenta "#d369af")
    (magenta-warmer "#e580ea")
    (magenta-cooler "#af85ff")
    (magenta-faint "#c58faf")
    (cyan "#78aaff")
    (cyan-warmer "#00a1d7")
    (cyan-cooler "#148691")
    (cyan-faint "#8aa0df")

    (bg-red-intense "#ff8f88")
    (bg-green-intense "#4a7100")
    (bg-yellow-intense "#efbf00")
    (bg-blue-intense "#cbccf1")
    (bg-magenta-intense "#da4fdf")
    (bg-cyan-intense "#66cfd0")

    (bg-red-subtle "#ffc6bf")
    (bg-green-subtle "#c4f2af")
    (bg-yellow-subtle "#f0f07f")
    (bg-blue-subtle "#c4d7f7")
    (bg-magenta-subtle "#fad3ff")
    (bg-cyan-subtle "#bfefff")

    (bg-added "#a0e0a0")
    (bg-added-faint "#c5ffa2")
    (bg-added-refine "#add0ad")
    (fg-added "#375e17")

    (bg-changed "#efef80")
    (bg-changed-faint "#ffe7a2")
    (bg-changed-refine "#ffffa8")
    (fg-changed "#363300")

    (bg-removed "#ffbfbf")
    (bg-removed-faint "#f9dadd")
    (bg-removed-refine "#f2c3c6")
    (fg-removed "#c62b4e")

    (bg-mode-line-active "#2c6c12")
    (fg-mode-line-active "#ffffe0")
    (bg-completion "#b0ff9d") ;; pastelgreen
    (bg-hover "#d2f6c4")
    (bg-hover-secondary "#a06c64")
    (bg-hl-line "#96d9f1")
    (bg-paren-match "#c5fff3")
    (bg-err "#f6beb3") ; check with err
    (bg-warning "#f7e381") ; check with warning
    (bg-info "#abf483") ; check with info
    (bg-region "#e0e3f0")

    ;; for code
    (fg-builtin      "#cc8800")
    (fg-comment      "#597a5f")
    (fg-constant     "#dd1100")
    (fg-name         "#388004")
    (fg-fnname-call  "#00688b")
    (fg-keyword      "#4a8e00")
    (fg-preprocessor "#919191")
    (fg-docstring    "#59786f")
    (fg-string       "#ee6600")
    (fg-type         "#00a1d7")
    (fg-variable     "#126a8a")
    (fg-variable-use "#7a94df") ;
    (fg-rx-backslash "#00a692") ; compare with `string'
    (fg-rx-construct "#ef6360")
    ))

(defconst ef-smyx-light-palette-mappings-partial
  '((err red-warmer)
    ;;(warning yellow-warmer)
    (warning yellow-warmer)
    (info green)

    (fg-link cyan)
    (fg-link-visited magenta-cooler)
    (name blue)
    (keybind yellow-cooler)
    (identifier yellow-faint)
    (fg-prompt cyan)

    (builtin fg-builtin)
    (comment fg-comment)
    (constant fg-constant)
    (fnname fg-fnname)
    (fnname-call fg-fnname-call)
    (keyword fn-keyword)
    (preprocessor fg-preprocessor)
    (docstring fg-docstring)
    (string fg-string)
    (type fg-type)
    (variable fg-variable)
    (variable-use fg-variable-use)
    (rx-backslash fg-rx-backslash) ; compare with `string'
    (rx-construct fg-rx-construct)

    (accent-0 cyan)
    (accent-1 yellow-warmer)
    (accent-2 green-warmer)
    (accent-3 magenta-cooler)

    (date-common green-cooler)
    (date-deadline red-warmer)
    (date-deadline-subtle red-faint)
    (date-event fg-alt)
    (date-holiday yellow-warmer)
    (date-now fg-main)
    (date-range fg-alt)
    (date-scheduled yellow)
    (date-scheduled-subtle yellow-faint)
    (date-weekday yellow-cooler)
    (date-weekend blue)

    (fg-prose-code green-light)
    (prose-done green)
    (fg-prose-macro green-warmer)
    (prose-metadata fg-dim)
    (prose-metadata-value fg-alt)
    (prose-table fg-alt)
    (prose-table-formula warning)
    (prose-tag magenta-faint)
    (prose-todo red)
    (fg-prose-verbatim blue-warmer)

    (mail-cite-0 yellow-cooler)
    (mail-cite-1 blue-faint)
    (mail-cite-2 green-faint)
    (mail-cite-3 fg-dim)
    (mail-part cyan)
    (mail-recipient green-warmer)
    (mail-subject yellow-faint)
    (mail-other blue-warmer)

    (bg-search-static bg-warning)
    (bg-search-current bg-yellow-intense)
    (bg-search-lazy bg-blue-intense)
    (bg-search-replace bg-red-intense)

    (bg-search-rx-group-0 bg-magenta-intense)
    (bg-search-rx-group-1 bg-green-intense)
    (bg-search-rx-group-2 bg-red-subtle)
    (bg-search-rx-group-3 bg-cyan-subtle)

    (bg-space-err bg-yellow-intense)

    (rainbow-0 orange-dark)
    (rainbow-1 blue-dark)
    (rainbow-2 green-faint)
    (rainbow-3 green)
    (rainbow-4 orange-dark)
    (rainbow-5 blue-dark)
    (rainbow-6 green-faint)
    (rainbow-7 green)
    (rainbow-8 orange-dark)
    ))

(defcustom ef-smyx-light-palette-overrides nil
  "Overrides for `ef-smyx-light-palette'.

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

(defconst ef-smyx-light-palette
  (modus-themes-generate-palette
   ef-smyx-light-palette-partial
   nil
   nil
   (append ef-smyx-light-palette-mappings-partial ef-themes-palette-common)))

;;;###theme-autoload
(modus-themes-theme
 'ef-smyx-light
 'ef-themes
 "Legible light green-orange theme with orange, cyan, green, blue colors."
 'light
 'ef-smyx-light-palette
 nil
 'ef-smyx-light-palette-overrides)

;;; ef-smyx-light-theme.el ends here
