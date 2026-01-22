;;; mapmaker-mode.el --- Major mode for editing maps -*- lexical-binding: t -*-

;;; Commentary:

;; Extremely simple mode for editing ASCII maps as input to
;; the MapMaker tool. Highlights keywords, numbers etc just
;; to indicate syntax.

;;; Code:

(define-generic-mode mapmaker-mode
  (list ?#)
  (list "sprites" "image" "srand" "layer" "glyph")
  '(("^[0-9]+" . font-lock-keyword-face)
    ("^[0-9]+[ \t]+\\(.+\\)" 1 font-lock-string-face))
  ()
  nil
  "Major mode for MapMaker input files")

(provide 'mapmaker-mode)

;;; mapmaker-mode.el ends here.
