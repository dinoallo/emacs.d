(packages-require
 'rainbow-delimiters
 'company)

(add-hook 'lisp-mode-hook
          (lambda ()
            (rainbow-delimiters-mode t)
            (show-paren-mode 1)
            (electric-pair-mode 1)))
