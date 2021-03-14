;;; init-vcs.el --- Configurations for version control systems -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package git-gutter
  :hook ((prog-mode . git-gutter-mode)))
(provide 'init-vcs)
;;; init-vcs.el ends here
