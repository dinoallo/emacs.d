;;; init-elisp.el --- Elisp related configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(packages-require
 'rainbow-delimiters
 'company)

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (rainbow-delimiters-mode t)
            (show-paren-mode 1)
            (electric-pair-mode 1)
            (lispy-mode 1)
            ))
(defun sanityinc/headerise-elisp ()
  "Add minimal header and footer to an elisp buffer in order to placate flycheck."
  (interactive)
  (let ((fname (if (buffer-file-name)
                   (file-name-nondirectory (buffer-file-name))
                 (error "This buffer is not visiting a file"))))
    (save-excursion
      (goto-char (point-min))
      (insert ";;; " fname " --- Insert description here -*- lexical-binding: t -*-\n"
              ";;; Commentary:\n"
              ";;; Code:\n\n")
      (goto-char (point-max))
      (insert ";;; " fname " ends here\n"))))
(add-hook 'emacs-lisp-mode-hook (lambda () (setq mode-name "ELisp")))
(provide 'init-elisp)
;;; init-elisp.el ends here
