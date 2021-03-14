;;; init-files.el --- File browsing configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(provide 'init-files)
(use-package all-the-icons-dired
  :ensure t
  :hook ((dired-mode . all-the-icons-dired-mode))
)
(add-hook 'dire-mode-hook 'dired-hide-details-mode)
(use-package ranger
  :ensure t
  :bind ("C-x d" . ranger)
  :config
  (ranger-override-dired-mode t)
  (customize-set-variable 'ranger-show-hidden t)
  (customize-set-variable 'ranger-dont-show-binary t)
  (customize-set-variable 'ranger-hide-cursor nil))
(provide 'init-files)
;;; init-files.el ends here
