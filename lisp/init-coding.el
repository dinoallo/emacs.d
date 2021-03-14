;;; init-coding.el --- Programming/Coding related configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;----------------------------------------------------------------------------
;; Basic settings
;;----------------------------------------------------------------------------
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;;----------------------------------------------------------------------------
;; Company
;;----------------------------------------------------------------------------
(add-hook 'prog-mode-hook 'company-mode)
;;----------------------------------------------------------------------------
;; Configuration formats (toml, yaml, ini, etc...)
;;----------------------------------------------------------------------------
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-mode))
;;----------------------------------------------------------------------------
;; Flycheck
;;----------------------------------------------------------------------------
(use-package flycheck
  :hook ((prog-mode . flycheck-mode)
         (yaml-mode . flycheck-mode)))
;;----------------------------------------------------------------------------
;; Projectile
;;----------------------------------------------------------------------------
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map))
  :config (setq projectile-sort-order 'modification-time)
  (setq projectile-enable-caching t)
  (setq projectile-file-exists-remote-cache-expire (* 10 60))
  (setq projectile-file-exists-local-cache-expire (* 5 60))
  (setq projectile-switch-project-action 'projectile-dired)
  (setq projectile-completion-system 'ivy))
(use-package counsel-projectile
  :ensure t
  :after (projectile)
  :config
  (counsel-projectile-mode t))

(provide 'init-coding)
;;; init-coding.el ends here
