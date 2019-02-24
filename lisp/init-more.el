;;; init-more.el --- Configurations with extra packages.
;;; Commentary:
;;; Code:


(use-package xah-fly-keys
  :ensure t
  :disabled
  :init
  (xah-fly-keys-set-layout "qwerty")
  (xah-fly-keys 1))

(use-package smex
  :ensure t
  :config (smex-initialize)
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)))


(use-package ido-vertical-mode
  :ensure t
  :config
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-and-C-p-only)
  (setq ido-vertical-show-count t))


(use-package which-key
  :ensure t
  :hook (after-init . which-key-mode)
  :config (which-key-setup-side-window-right-bottom))


(use-package switch-window
  :ensure t
  :init (setq switch-window-shortcut-style 'qwerty))


(use-package company
  :ensure t
  :hook (after-init . global-company-mode)
  :bind (:map company-active-map
	      ("M-n" . nil)
	      ("M-p" . nil)
	      ("C-n" . company-select-next)
	      ("C-p" . company-select-previous))
  :diminish " C")


(setq hippie-expand-try-functions-list
      '(try-complete-file-name-partially
	try-complete-file-name
	try-expand-dabbrev
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill))


(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))


;; @purcell
;; Comments code for make it work in lisp modes, but I no need
(use-package move-dup
  :ensure t
  :bind (([M-up] . md/move-lines-up)
	 ([M-down] . md/move-lines-down)
	 ;; ([M-S-up] . md/move-lines-up)
	 ;; ([M-S-down] . md/move-lines-down)
	 ([M-S-up] . md/duplicate-down)
	 ([M-S-down] . md/duplicate-up)))


(use-package flycheck
  :ensure t
  :hook (after-init . global-flycheck-mode)
  :diminish " FC")


(use-package yasnippet
  :ensure t
  :disabled
  :hook (after-init . yas-global-mode))


(use-package diff-hl
  :ensure t
  :hook (after-init . global-diff-hl-mode))


(use-package magit
  :ensure t)


(use-package youdao-dictionary
  :ensure t)


(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))


(use-package undo-tree
  :diminish)


(use-package eldoc
  :diminish)






(provide 'init-more)
;;; init-more.el ends here
