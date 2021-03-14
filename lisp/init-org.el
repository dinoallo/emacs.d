;;; init-org.el --- Org mode tweaks -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package org
  :hook ((org-mode . visual-line-mode)
         (org-mode . org-indent-mode)))
(provide 'init-org)
;;; init-org.el ends here
