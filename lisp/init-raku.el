;;; init-raku.el --- Raku configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package raku-mode
  :ensure t
  :mode (("\\.[Pp][Ll]?6\\'" . raku-mode))
  :defer t)
(use-package flycheck-perl6
  :ensure t
  :after (flycheck))
(provide 'init-raku)
;;; init-raku.el ends here
