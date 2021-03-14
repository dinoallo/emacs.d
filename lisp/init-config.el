;;; init-config.el --- Emacs Configurations for mainstream configuration formats -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
;; yaml
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-mode))
(require 'flycheck)
()
(provide 'init-config)
;;; init-config.el ends here
