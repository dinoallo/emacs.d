;;; init-font.el --- Summary: Setting font in Emacs
;;; Commentary:
;;; The configuration below requires unicode-fonts package
;;; https://github.com/rolandwalker/unicode-fonts/
;;; Since unicode-fonts assumes that your default font supports characters in Latin Extended Addtional, Latin Extended-A, Latin-1 Supplement, Spacing Modifier Letters, considering switch to a better font (e.g. Consolas) if your font doesn't.
;;; Code:
;; Font-setting for default frame
(add-to-list 'default-frame-alist
             '(font . "Iosevka-13"))

(require 'unicode-fonts)
(setq unicode-fonts-block-font-mapping
      '(("CJK Compatibility"                                (
                                                             "SimHei"
                                                             "SimSun"
                                                             ))
        ("CJK Compatibility Forms"                          (
                                                             "WenQuanYi Zen Hei Mono"       ; 32/32
                                                             "SimHei"
                                                             "SimSun"
                                                             "DFKai-SB"
                                                             ))
        ("CJK Compatibility Ideographs"                     (
                                                             "SimHei"
                                                             "FangSong"
                                                             "SimSun"
                                                             "WenQuanYi Zen Hei Mono"       ; 455/472
                                                             ))
        ("CJK Compatibility Ideographs Supplement"          (
                                                             "WenQuanYi Zen Hei Mono"       ; 542/542
                                                             "SimHei"
                                                             "SimSun"
                                                             ))
        ("CJK Radicals Supplement"                          (
                                                             "WenQuanYi Zen Hei Mono"       ; 115/115
                                                             "SimHei"
                                                             "SimSun"
                                                             "DFKai-SB"
                                                             ))
        ("CJK Strokes"                                      (
                                                             "WenQuanYi Zen Hei Mono"       ; 36/36
                                                             ))
        ("CJK Symbols and Punctuation"                      (
                                                             "SimHei"
                                                             "SimSun"
                                                             "WenQuanYi Zen Hei Mono"       ; 38/64
                                                             ))
        ("CJK Unified Ideographs"                           (
                                                             "WenQuanYi Zen Hei Mono"       ; 20,940/20,950
                                                             "Noto Sans CJK TC"
                                                             "Noto Sans CJK SC"
                                                             "Noto Sans CJK JP"
                                                             "SimHei"
                                                             "SimSun"
                                                             "DFKai-SB"
                                                             ))
        ("CJK Unified Ideographs Extension A"               (
                                                             "SimHei"
                                                             "SimSun"
                                                             "DFKai-SB"
                                                             ))
        ("CJK Unified Ideographs Extension B"               (
                                                             "SimHei"
                                                             "SimSun"
                                                             "DFKai-SB"
                                                             ))
        ("Cyrillic"                                         (
                                                             "Consolas"                     ; 255/256
                                                             "Monaco"                       ; 191/256
                                                             "DejaVu Sans Mono"             ; 180/256  @2.35 @2.34999084472656
                                                             "DejaVu Sans:width=condensed"  ; 256/256
                                                             "Noto Sans"                    ; 256/256
                                                             "Courier New"                  ; 118/256
                                                             "Calibri"                      ; 255/256
                                                             "Quivira"                      ; 256/256  @4.1 @3.80000305175781
                                                             ))
        ("Emoticons"                                        (
                                                             "Symbola"                      ; 80/80  @8.00 @8
                                                             "Quivira"                      ; 78/80  @4.1 @3.80000305175781
                                                             ))
        ("Greek Extended"                                   (
                                                             "Consolas" ; 232/233
                                                             "DejaVu Sans Mono" ; 233/233  @2.35 @2.34999084472656
                                                             "Noto Sans" ; 233/233
                                                             "Cardo" ; 233/233
                                                             "Quivira" ; 233/233  @4.1 @3.800003051
                                                             ))
        ("Greek and Coptic"                                 (
                                                             "Consolas"                     ;  75/135
                                                             "DejaVu Sans Mono"             ; 110/135  @2.35 @2.34999084472656
                                                             "DejaVu Sans:width=condensed"  ; 134/135
                                                             "Noto Sans"                    ; 127/135
                                                             "Calibri"                      ; 127/135
                                                             "Cardo"                        ; 134/135
                                                             "Quivira"                      ; 135/135  @4.1 @3.80000305175781
                                                             ))
        ("IPA Extensions"                                   (
                                                             "Consolas"                     ; 96/96
                                                             "Monaco"                       ; 78/96
                                                             "DejaVu Sans Mono"             ; 96/96  @2.35 @2.34999084472656
                                                             "Noto Sans"                    ; 96/96
                                                             "Cardo"                        ; 96/96
                                                             "Quivira"                      ; 96/96  @4.1 @3.80000305175781
                                                             ))
        ("Mathematical Alphanumeric Symbols"                (
                                                             "Cambria Math"                 ; 994/996
                                                             "Noto Sans Symbols"            ; 996/996
                                                             "Asana Math"                   ; 996/996
                                                             "Code2001"                     ; 994/996
                                                             "Symbola"                      ; 996/996  @8.00 @8
                                                             "Quivira"                      ; 996/996  @4.1 @3.80000305175781
                                                             "Everson Mono:weight=bold"     ; 992/996
                                                             ))
        ("Mathematical Operators"                           (
                                                             "Noto Sans Symbols"            ; 256/256
                                                             "Monaco"                       ;  47/256
                                                             "DejaVu Sans Mono"             ; 178/256  @2.35 @2.34999084472656
                                                             "DejaVu Sans:width=condensed"  ; 256/256
                                                             "Quivira"                      ; 256/256  @4.1 @3.80000305175781
                                                             ))
        ("Miscellaneous Mathematical Symbols-A"             (
                                                             "Noto Sans Symbols"            ; 48/48
                                                             "Quivira"                      ; 48/48  @4.1 @3.80000305175781
                                                             ))
        ("Miscellaneous Mathematical Symbols-B"             (
                                                             "Noto Sans Symbols"            ; 128/128
                                                             "Quivira"                      ; 128/128  @4.1 @3.80000305175781
                                                             ))
        ("Miscellaneous Symbols"                            (
                                                             "Symbola"                      ; 256/256  @8.00 @8
                                                             "Quivira"                      ; 220/256  @4.1 @3.80000305175781
                                                             "Noto Sans Symbols"            ; 256/256
                                                             ))
        ("Miscellaneous Symbols and Arrows"                 (
                                                             "Symbola"                      ; 206/206  @8.00 @8
                                                             "Quivira"                      ; 202/206  @4.1 @3.80000305175781
                                                             ))
        ("Miscellaneous Symbols and Pictographs"            (
                                                             "Symbola"                      ; 766/766  @8.00 @8
                                                             "Quivira"                      ; 191/766  @4.1 @3.80000305175781
                                                             ))
        ("Miscellaneous Technical"                          (
                                                             "Symbola"                      ; 251/251  @8.00 @8
                                                             "Quivira"                      ; 251/251  @4.1 @3.80000305175781
                                                             ))

        )
      unicode-fonts-fontset-names '("fontset-default"))
(unicode-fonts-setup)

;;; Fonts for programming mode:
(defun toggle-programming-font ()
  "A hook for using mononoki font for programming."
  (face-remap-add-relative 'default :family "mononoki")
  )
(add-hook 'prog-mode-hook 'toggle-programming-font)

(provide 'init-font)
;;; init-font.el ends here
