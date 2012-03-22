;;; birds-of-paradise-theme.el --- custom theme for faces

;; Copyright (C) 2011, 2012 Paul M. Rodriguez <paulmrodriguez@gmail.com>

;; Author: Paul M. Rodriguez <pmr@ruricolist.com>
;; Version: 0.2

;; This file is not part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary

;; This theme is a port of Joseph Bergantine's "Birds of Paradise"
;; theme for Panic Coda, released under the BSD license:
;; http://joebergantine.com/werkstatt/birds-of-paradise.

;; The font-lock and diff colors are taken from Bergantine's own
;; TextMate port. (I have changed the warning face to one I find less
;; painful.) Colors for `nxml-mode' are from the Panic Coda version.
;; Colors for `whitespace-mode' and `elscreen' are by Jim Myhrberg
;; <https://github.com/jimeh/birds-of-paradise-plus-theme.el>. The
;; rest are mine.

;;; Code:

(deftheme birds-of-paradise
  "Port of the brown-based warm light-on-dark theme by Joe Bergantine.")

(let ((brown-1 "#372725") (brown-2 "#6B4E32") (brown-3 "#2A1D1D")
                          (brown-4 "#523D2B") (brown-5 "#7D504A")
                          (brown-6 "#523E2B") (brown-7 "#e2c991")
                          (brown-8 "#DDAA6E")
      (white-1 "#E6E1C4") (white-2 "#E6E1DC")
      (black-1 "#1F1611") (black-2 "#16120E")
      (gray-1 "gray25")
      (yellow-1 "#D9D762") (yellow-2 "#EFAC32") (yellow-3 "#EFCB43")
                           (yellow-4 "#EFC232") (yellow-5 "#FFC05C")
      (orange-1 "#EF5D32") (orange-2 "#CC762E") (orange-3 "#C74725")
                           (orange-4 "#EB7300")
      (red-1 "#990000") (red-2 "#660000")    (red-3 "#CC4232")
                        (red-4 "#BE3250")    (red-5 "#D23850")
                        (red-6 "firebrick4") (red-7 "#bb4949")
      (blue-1 "#7DAF9C") (blue-2 "#6C99BB") (blue-3 "#5798AE")
                         (blue-4 "#93C1BC") (blue-5 "#2F33AB")
      (purple-1 "#BB99BB") (purple-2 "#8856D2") (purple-3 "#BE73FD")
      (purple-4 "#f0898f")
      (green-1 "#144212") (green-2 "SeaGreen"))
  (require 'outline)
  (custom-theme-set-faces
   'birds-of-paradise
   `(default ((t (:background ,brown-1 :foreground ,white-1))))
   `(cursor ((t (:foreground ,brown-2 :background ,white-1))))
   `(fringe ((t (:background ,gray-1))))
   `(highlight ((t (:background ,black-1 :foreground ,white-1))))
   `(region ((t (:background ,black-2))))
   '(cua-rectangle ((t (:inherit region))))
   `(font-lock-builtin-face ((t (:foreground ,blue-2))))
   `(font-lock-comment-face ((t (:italic t :foreground ,brown-2))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-constant-face ((t (:foreground ,blue-2))))
   `(font-lock-doc-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-function-name-face ((t (:foreground ,yellow-2))))
   `(font-lock-keyword-face ((t (:foreground ,orange-1))))
   `(font-lock-negation-char-face ((t (:foreground ,blue-1))))
   `(font-lock-preprocessor-face ((t (:foreground ,red-4))))
   `(font-lock-string-face ((t (:foreground ,yellow-1))))
   `(font-lock-type-face ((t (:bold t :foreground ,yellow-2))))
   `(font-lock-variable-name-face ((t (:foreground ,blue-1))))
   `(error ((t (:foreground ,purple-1 :weight bold))))
   `(font-lock-warning-face ((t (:inherit error))))
   `(warning ((t (:foreground ,orange-2))))
   '(isearch ((t (:inherit highlight :underline t))))
   '(isearch-fail ((t (:inherit font-lock-warning-face))))
   `(match ((t (:background ,blue-1))))
   '(lazy-highlight ((t (:inherit highlight))))
   '(diff-context ((t (:inherit default))))
   `(diff-header ((t (:background ,blue-5))))
   `(diff-added ((t (:background ,green-1 :foreground ,white-2))))
   `(diff-removed ((t (:background ,red-2 :foreground ,white-2))))
   `(escape-glyph ((t (:foreground ,purple-3))))
   `(minibuffer-prompt ((t (:foreground ,blue-2))))
   `(ido-only-match ((t (:foreground ,orange-1))))
   `(ido-subdir ((t (:foreground ,yellow-2))))
   `(flyspell-incorrect ((t (:underline ,red-6))))
   `(flyspell-duplicate ((t (:underline ,red-6))))
   `(speck-guess ((t (:underline ,red-6))))
   `(speck-miss ((t (:underline ,orange-4))))
   `(speck-doublet ((t (:underline ,purple-1))))
   `(speck-mouse ((t (:background ,purple-1))))
   `(speck-mode-line-specking ((t (:foreground ,brown-7))))
   `(speck-mode-line-specked ((t (:foreground ,orange-4))))
   `(pabbrev-suggestions-face ((t (:foreground ,brown-7))))
   `(pabbrev-single-suggestion-face ((t (:foreground ,orange-4))))
   `(whitespace-newline ((t (:foreground ,brown-6))))
   `(whitespace-hspace ((t (:foreground ,brown-6))))
   `(whitespace-space ((t (:foreground ,brown-6))))
   `(whitespace-tab ((t (:foreground ,brown-6))))
   `(whitespace-line ((t (:background ,gray-1))))
   `(whitespace-indentation ((t (:foreground ,brown-6))))
   `(whitespace-space-after-tab ((t (:foreground ,brown-6))))
   `(elscreen-tab-background-face ((t (:background ,brown-3))))
   `(elscreen-tab-control-face ((t (:background ,brown-2 :foreground ,white-1 :underline nil))))
   `(elscreen-tab-current-screen-face ((t (:background ,brown-2 :foreground ,white-1))))
   `(elscreen-tab-other-screen-face ((t (:background ,brown-3 :foreground ,white-1 :underline nil))))
   '(trailing-whitespace ((t (:inherit font-lock-warning-face))))
   '(show-paren-match ((t (:inherit highlight))))
   '(show-paren-mismatch ((t (:inherit font-lock-warning-face))))
   `(slime-error-face ((t (:underline ,purple-1))))
   `(slime-repl-inputed-output-face ((t (:foreground ,orange-4))))
   `(column-marker-1 ((t (:background ,brown-6))))
   `(button ((t (:foreground ,yellow-1 :background ,blue-1 :weight bold :underline t))))
   `(link ((t (:foreground ,yellow-1 :underline nil))))
   `(link-visited ((t (:foreground ,blue-3 :underline nil))))
   `(mode-line ((t (:background ,brown-2 :foreground ,white-1))))
   `(mode-line-inactive ((t (:background ,gray-1 :foreground ,white-1))))
   `(which-func ((t (:foreground ,yellow-2))))
   `(header-line ((t (:background ,black-1 :foreground ,white-1))))
   '(font-latex-warning-face ((t :inherit font-lock-warning-face)))
   `(gnus-group-news-1 ((t (:foreground ,yellow-1 :weight bold))))
   `(gnus-group-news-1-empty ((t (:foreground ,yellow-1))))
   `(gnus-group-news-2 ((t (:foreground ,orange-1 :weight bold))))
   `(gnus-group-news-2-empty ((t (:foreground ,orange-1))))
   `(gnus-group-news-3 ((t (:foreground ,red-3 :weight bold))))
   `(gnus-group-news-3-empty ((t (:foreground ,red-3))))
   `(gnus-group-news-4 ((t (:foreground ,purple-1 :weight bold))))
   `(gnus-group-news-4-empty ((t (:foreground ,purple-1))))
   `(gnus-group-news-5 ((t (:foreground ,blue-1 :weight bold))))
   `(gnus-group-news-5-empty ((t (:foreground ,blue-1))))
   `(gnus-group-news-6 ((t (:foreground ,blue-2 :weight bold))))
   `(gnus-group-news-6-empty ((t (:foreground ,blue-2))))
   `(gnus-group-news-low ((t (:foreground ,brown-2 :italic t))))
   `(gnus-group-news-low-empty ((t (:foreground ,brown-2))))
   `(gnus-group-mail-1 ((t (:foreground ,yellow-1 :weight bold))))
   `(gnus-group-mail-1-empty ((t (:foreground ,yellow-1))))
   `(gnus-group-mail-2 ((t (:foreground ,orange-1 :weight bold))))
   `(gnus-group-mail-2-empty ((t (:foreground ,orange-1 :weight bold))))
   `(gnus-group-mail-3 ((t (:foreground ,red-3 :weight bold))))
   `(gnus-group-mail-3-empty ((t (:foreground ,red-3))))
   `(gnus-group-mail-low ((t (:foreground ,brown-2 :italic t))))
   `(gnus-group-mail-low-empty ((t (:foreground ,brown-2))))
   '(gnus-header-content ((t (:inherit message-header-other))))
   '(gnus-header-from ((t (:inherit message-header-from))))
   '(gnus-header-name ((t (:inherit message-header-name))))
   '(gnus-header-newsgroups ((t (:inherit message-header-other))))
   '(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-header-newsgroups ((t (:foreground ,yellow-2))))
   `(gnus-summary-high-ticked ((t :foreground ,purple-4)))
   `(gnus-summary-high-read ((t :foreground ,brown-7)))
   `(gnus-summary-high-unread ((t :foreground ,yellow-1)))
   `(gnus-summary-high-ancient ((t :foreground "gray75")))
   `(gnus-summary-normal-ticked ((t :foreground ,red-3)))
   `(gnus-summary-normal-read ((t :foreground ,brown-8)))
   `(gnus-summary-normal-unread ((t :foreground ,orange-1)))
   `(gnus-summary-normal-ancient ((t :foreground "gray50")))
   `(gnus-summary-low-ticked ((t :foreground ,blue-2)))
   `(gnus-summary-low-read ((t :foreground ,brown-2)))
   `(gnus-summary-low-unread ((t :foreground ,red-3)))
   `(gnus-summary-low-ancient ((t :foreground ,gray-1)))
   `(message-header-name ((t (:foreground ,orange-1))))
   `(message-header-from ((t (:foreground ,yellow-1))))
   `(message-header-cc ((t (:foreground ,brown-2))))
   `(message-header-other ((t (:foreground ,brown-2))))
   `(message-header-subject ((t (:foreground ,white-1))))
   `(message-header-to ((t (:foreground ,white-1))))
   `(message-cited-text ((t (:foreground ,yellow-2))))
   `(message-separator ((t (:foreground ,yellow-2))))
   `(cperl-nonoverridable-face ((t :foreground ,green-2)))
   `(cperl-array-face ((t (:foreground ,white-1 :background ,brown-3))))
   `(cperl-hash-face ((t (:foreground ,white-1 :background ,brown-5))))
   ;; The rest of the Info title faces inherit from this.
   `(info-title-4 ((t :foreground ,brown-2 :weight bold :inherit variable-pitch)))
   `(info-menu-header ((t :foreground ,brown-2 :weight bold :inherit variable-pitch)))
   `(info-menu-star ((t :foreground ,purple-1)))
   `(projector-writable-project ((t :foreground ,orange-4)))
   `(projector-read-only-project ((t :foreground ,brown-7)))
   `(js2-external-variable ((t (:foreground ,orange-4))))
   `(js2-jsdoc-html-tag-delimiter ((t (:foreground ,yellow-3))))
   `(js2-jsdoc-html-tag-name ((t (:foreground ,yellow-3))))
   ;; The colors for the delimitersmust be distinct from all the
   ;; others colors used, lest they assimilate, but they must not
   ;; clash with them or with one another.
   '(rainbow-delimiters-unmatched-face ((t (:inherit font-lock-warning-face))))
   '(rainbow-delimiters-depth-1-face ((t (:foreground "wheat"))))
   '(rainbow-delimiters-depth-2-face ((t (:foreground "tan"))))
   '(rainbow-delimiters-depth-3-face ((t (:foreground "#E1A95F")))) ;earth yellow
   '(rainbow-delimiters-depth-4-face ((t (:foreground "sandy brown"))))
   '(rainbow-delimiters-depth-5-face ((t (:foreground "peru"))))
   '(rainbow-delimiters-depth-6-face ((t (:foreground "chocolate"))))
   '(rainbow-delimiters-depth-7-face ((t (:foreground "sienna"))))
   '(rainbow-delimiters-depth-8-face ((t (:foreground "#80461B")))) ;russet
   '(rainbow-delimiters-depth-9-face ((t (:foreground "#B87333")))) ;copper
   '(rainbow-delimiters-unmatched-face ((t (:inherit error))))
   `(minimap-active-region-background ((t (:background ,brown-4))))
   `(org-special-keyword ((t (:foreground ,brown-5))))
   '(eshell-prompt ((t (:inherit minibuffer-prompt))))
   '(eshell-ls-symlink ((t (:inherit link :bold t))))
   `(eshell-ls-readonly ((t (:foreground ,brown-7))))
   '(eshell-ls-missing ((t (:inherit error))))
   `(eshell-ls-executable ((t (:foreground ,green-2 :bold t))))
   `(eshell-ls-backup ((t (:foreground ,brown-8))))
   `(eshell-ls-clutter ((t (:foreground ,brown-2))))
   `(eshell-ls-archive ((t (:foreground ,red-5 :bold t))))
   `(eshell-ls-special ((t (:foreground ,purple-3 :bold t))))
   `(eshell-ls-directory ((t (:foreground ,blue-2 :bold t)))) ;01;34
   ;; TODO Other Eshell faces.
   '(sh-heredoc ((t (:inherit font-lock-string-face))))
   `(woman-italic ((t :foreground ,yellow-2 :italic t)))
   `(woman-bold ((t :foreground ,blue-2 :weight normal)))
   '(nxml-comment-content ((t (:inherit font-lock-comment-face))))
   `(nxml-tag-delimiter ((t (:foreground ,yellow-3))))
   `(nxml-processing-instruction-target ((t (:foreground ,brown-2))))
   `(nxml-entity-ref-delimiter ((t (:foreground ,blue-2))))
   `(nxml-entity-ref-name ((t (:foreground ,blue-2))))
   `(nxml-element-local-name ((t (:foreground ,yellow-3))))
   `(nxml-cdata-section-content ((t (:foreground ,red-3))))
   `(nxml-attribute-local-name ((t (:foreground ,orange-1))))
   `(nxml-attribute-value ((t (:foreground ,yellow-1)))))
  (custom-theme-set-variables
   'birds-of-paradise
   `(ansi-color-names-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [,black-1 ,red-3 ,green-2 ,yellow-4 ,blue-3 ,purple-1 ,blue-4 ,white-2])
   `(ansi-term-color-vector
     ;; [unspecified "black" "red3" "green3" "yellow3" "blue2" "magenta3" "cyan3" "white"]
     [unspecified ,black-1 ,red-3 ,green-2 ,yellow-4 ,blue-3 ,purple-1 ,blue-4 ,white-2])))

(provide-theme 'birds-of-paradise)

;; Local Variables:
;; eval: (rainbow-mode 1)
;; no-byte-compile: t
;; End:

;;; birds-of-paradise-theme.el ends here
