;;; ef-smyx-dark-theme.el --- Legible dark theme with orange, cyan, green, blue colors. -*- lexical-binding:t -*-

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

(defconst ef-smyx-dark-palette-partial
  '((cursor      "#ffa500")
    (bg-main     "#060606")
    (bg-dim      "#221920")
    (bg-alt      "#333344")
    (fg-main     "#f7f7f7")
    (fg-dim      "#857f8f")
    (fg-alt      "#89afef")
    (bg-active   "#4b3f47")
    (bg-inactive "#191317")
    (border      "#4d4a4b")

    (red "#ef6360")
    (red-warmer "#ff7355")
    (red-cooler "#fe5a7a")
    (red-faint "#d56f72")

    (orange "#ee6600")
    (orange-warmer "#ffa500")

    (green "#0faa26")
    (green-warmer "#6aad0f")
    (green-cooler "#00a692")
    (green-faint "#d1fa71")
    (green-light "#24d8a5")

    (yellow "#ffe523")
    (yellow-warmer "#ffd500")
    (yellow-cooler "#e4d00a")
    (yellow-faint "#f6dc69")

    (blue "#3f95f6")
    (blue-warmer "#6a9fff")
    (blue-cooler "#029fff")
    (blue-faint "#7a94df")
    (blue-light "#96d9f1")

    (magenta "#d369af")
    (magenta-warmer "#e580ea")
    (magenta-cooler "#af85ff")
    (magenta-faint "#c58faf")

    (cyan "#96d9f1")
    (cyan-warmer "#afeeee")
    (cyan-cooler "#1dbfcf")
    (cyan-faint "#8aa0df")

    (bg-red-intense "#b02930")
    (bg-green-intense "#4a7100")
    (bg-yellow-intense "#8f5040")
    (bg-blue-intense "#4648d0")
    (bg-magenta-intense "#804fdf")
    (bg-cyan-intense "#2270cf")

    (bg-red-subtle "#6f1f2a")
    (bg-green-subtle "#1f462f")
    (bg-yellow-subtle "#5a372f")
    (bg-blue-subtle "#2f366a")
    (bg-magenta-subtle "#582650")
    (bg-cyan-subtle "#1c4256")

    (bg-added "#233b0f")
    (bg-added-faint "#102a00")
    (bg-added-refine "#2f512f")
    (fg-added "#a0e0a0")

    (bg-changed "#363300")
    (bg-changed-faint "#2a1f00")
    (bg-changed-refine "#4a4a00")
    (fg-changed "#efef80")

    (bg-removed "#4e111f")
    (bg-removed-faint "#380a0f")
    (bg-removed-refine "#751a1f")
    (fg-removed "#ffbfbf")

    (bg-mode-line-active "#2c6c12")
    (fg-mode-line-active "#ffffe0")
    (bg-completion "#1f334f")
    (bg-hover "#304477")
    (bg-hover-secondary "#5f3f3a")
    (bg-hl-line "#064e70")
    (bg-paren-match "#005f4a")
    (bg-err "#461309") ; check with err
    (bg-warning "#3a3104") ; check with warning
    (bg-info "#163505") ; check with info
    (bg-region "#282b3d")

    ;; for code
    (fg-code-builtin      "#ffa500")
    (fg-code-comment      "#857f8f")
    (fg-code-constant     "#ff7355")
    (fg-code-fnname       "#96d9f1")
    (fg-code-fnname-call  "#8aa0df")
    (fg-code-keyword      "#d1fa71")
    (fg-code-preprocessor "#919191")
    (fg-code-docstring    "#857f8f")
    (fg-code-string       "#f6dc69")
    (fg-code-type         "#afeeee")
    (fg-code-variable     "#96d9f1")
    (fg-code-variable-use "#7a94df")
    (fg-code-rx-backslash "#00a692") ; compare with `string'
    (fg-code-rx-construct "#ef6360")
    ))

(defconst ef-smyx-dark-palette-mappings-partial
  '((err red-warmer)
    (warning yellow)
    (info green)

    (fg-link cyan)
    (fg-link-visited magenta-cooler)
    (name blue)
    (keybind yellow-cooler)
    (identifier yellow-faint)
    (fg-prompt cyan)

    (builtin fg-code-builtin)
    (comment fg-code-comment)
    (constant fg-code-constant)
    (fnname fg-code-fnname)
    (fnname-call fg-code-fnname-call)
    (keyword fg-code-keyword)
    (preprocessor fg-code-preprocessor)
    (docstring fg-code-docstring)
    (string fg-code-string)
    (type fg-code-type)
    (variable fg-code-variable)
    (variable-use fg-code-variable-use)
    (rx-backslash fg-code-rx-backslash) ; compare with `string'
    (rx-construct fg-code-rx-construct)

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

    (rainbow-0 orange)
    (rainbow-1 cyan)
    (rainbow-2 green-faint)
    (rainbow-3 yellow-faint)
    (rainbow-4 orange-warmer)
    (rainbow-5 cyan)
    (rainbow-6 green-faint)
    (rainbow-7 yellow-faint)
    (rainbow-8 orange-warmer)
    ))

(defcustom ef-smyx-dark-palette-overrides nil
  "Overrides for `ef-smyx-dark-palette'.

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

(defconst ef-smyx-dark-palette
  (modus-themes-generate-palette
   ef-smyx-dark-palette-partial
   nil
   nil
   (append ef-smyx-dark-palette-mappings-partial ef-themes-palette-common)))

;;;###theme-autoload
(modus-themes-theme
 'ef-smyx-dark
 'ef-themes
 "Legible dark green-orange theme with orange, cyan, green, blue colors."
 'dark
 'ef-smyx-dark-palette
 nil
 'ef-smyx-dark-palette-overrides)

;;; ef-smyx-dark-theme.el ends here
