;;; init-window.el --- Window related configurations -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;----------------------------------------------------------------------------
;; Windows
;;----------------------------------------------------------------------------
(require 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)
(defun allo/split-vertically-and-switch-buffer () "Split current window vertically and switch the buffer in the other window."
       (interactive)
       (aw-switch-buffer-in-window (split-window-vertically)))
(defun allo/split-horizontally-and-switch-buffer () "Split current window horizontally and switch the buffer in the other window."
       (interactive)
       (aw-switch-buffer-in-window (split-window-horizontally)))
(global-set-key (kbd "C-x 2") 'allo/split-vertically-and-switch-buffer)
(global-set-key (kbd "C-x 3") 'allo/split-horizontally-and-switch-buffer)
;; do not treat `ace-window` like `other-window` when there are only two windows.
(setq aw-dispatch-always t)
;; ignore current window
;; (setq aw-ignore-current t)
;;----------------------------------------------------------------------------
;; Buffers
;;----------------------------------------------------------------------------
;; change the message displayed on the scratch buffer.
(setq-default initial-scratch-message
              (concat ";; Happy hacking, " user-login-name "!\n\n"))
;; inhibit the startup buffer(the splash screen)
(setq-default inhibit-startup-screen t)
;; ibuffer
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(setq ibuffer-saved-filter-groups
      '(("Default"
         ("Emacs" (or (filename . ".emacs.d")
                      (name . "^\\*scratch\\*$")
                      (name . "^\\*Messages\\*$")))
         ("Org" (or (mode . org-mode)
                    (filename . "OrgMode")))
         ("Development" (or (filename . "development")
                            (filename . "dev")))
         ("Magit" (name . "\*magit"))
         ("Help" (or (name . "\*Help\*")
                     (name . "\*Apropos\*")
                     (name . "\*info\*"))))))
(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-auto-mode 1)
            (ibuffer-switch-to-saved-filter-groups "Default")))
;; do not prompt when deleting buffers.
(setq ibuffer-expert t)
;; do not show empty filter groups
(setq ibuffer-show-empty-filter-groups nil)
;; get rid of title and summary
(defadvice ibuffer-update-title-and-summary (after remove-column-titles)
"Set the `ibuffer-display-summary` to nil."
(save-excursion
  (set-buffer "*Ibuffer*")
  (toggle-read-only 0)
  (goto-char 1)
  (search-forward "-\n" nil t)
  (delete-region 1 (point))
  (let ((window-min-height 1))
    ;; save a little screen estate
    (shrink-window-if-larger-than-buffer))
  (toggle-read-only)))
;; rebind C-x k to `kill-current-buffer`
(defun allo/kill-and-select-current-buffer ()
  "Kill the buffer in the current window and select another one."
  (interactive)
  (let ((current-window (get-buffer-window))) (kill-current-buffer) (aw-switch-buffer-in-window current-window))
  )
(global-set-key (kbd "C-x k") 'kill-current-buffer)
(use-package all-the-icons-ibuffer
  :ensure t
  :init (all-the-icons-ibuffer-mode 1))
(provide 'init-window)
;;; init-window.el ends here
