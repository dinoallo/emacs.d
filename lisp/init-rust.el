;;; init-rust.el --- Rust language configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package rust-mode
  :ensure t
  :mode ("\\.ru?st?\\'" . rust-mode)
  :hook ((rust-mode . racer-mode)
         (racer-mode . company-mode)
         (racer-mode . eldoc-mode))
  :bind (:map rust-mode-map
              ("TAB" . company-indent-or-complete-common)))
(use-package flycheck-rust
  :ensure t
  :hook (flycheck-mode . flycheck-rust-setup)
  :after (rust-mode))
;;; init-rust.el ends here
