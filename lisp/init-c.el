;;; init-c.el --- Support for C/C++ -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package cc-mode
  :config
  (setq c-default-style '((java-mode . "java")
                          (awk-mode . "awk")
                          (other ."linux"))))
(use-package company)
;;; init-c.el ends here
