;;; init-theme.el --- Summary: Setting Emacs face
;;; Commentary:
;;; I use themes called twilight-anti-bright and twilight-bright.
;;; Font settings are in init-font.el
;;; Code:
;;----------------------------------------------------------------------------
;; Face
;;----------------------------------------------------------------------------
(customize-set-variable 'cursor-type '(bar . 2))
(use-package twilight-bright-theme :ensure :defer)
(use-package twilight-anti-bright-theme :ensure :defer)
(use-package circadian
  :ensure t
  :config
  (setq circadian-themes '(("6:00" . twilight-bright)
                           ("18:00" . twilight-anti-bright)))
  (circadian-setup))
;;----------------------------------------------------------------------------
;; Modeline
;;----------------------------------------------------------------------------
(use-package mood-line
  :config (mood-line-mode 1))
(provide 'init-theme)
;;; init-theme.el ends here
