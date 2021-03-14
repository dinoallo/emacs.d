;;; init-nav.el --- File/Buffer search and navigation -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
;;----------------------------------------------------------------------------
;; Ivy / Counsel / Swiper
;;----------------------------------------------------------------------------
;; Use ivy for minibuffer completion and more
(use-package ivy
  :config
  (ivy-mode 1)
  (setq-default ivy-use-virtual-buffers t
                  ivy-virtual-abbreviate 'fullpath
                  ivy-count-format ""
                  ivy-magic-tilde nil
                  ivy-dynamic-exhibit-delay-ms 150
                  ivy-use-selectable-prompt t
                  enable-recursive-minibuffers t)
  :bind (:map ivy-minibuffer-map
              ("RET" . ivy-alt-done)) (:map ivy-mode-map ("M-s a" . counsel-ag)))
(use-package counsel
  :config
  (counsel-mode 1))

(use-package swiper
  :bind (:map ivy-mode-map
         ("M-s /" . swiper)))
(use-package all-the-icons-ivy
  :ensure t
  :after (ivy)
  :config (all-the-icons-ivy-setup))
(provide 'init-ivy)

;;----------------------------------------------------------------------------
;; Avy
;;----------------------------------------------------------------------------
;; replece default goto with avy
(use-package avy
  :bind (("M-g c" . avy-goto-char)
         ("M-g g" . avy-goto-line)
         ("M-g t" . avy-goto-char-timer)))
(provide 'init-nav)
;;; init-nav.el ends here
