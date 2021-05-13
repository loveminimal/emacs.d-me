;;; init-defs.el --- Define global variables and funcs. -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(defvar macro-file (expand-file-name "macro.el" user-emacs-directory) "Custom macro file.")

(defvar *is-mac* (eq system-type 'darwin) "Current system is mac.")
(defvar *is-win* (eq system-type 'windows-nt) "Current system is windows.")
(defvar *is-nux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) "Current system is gnu/linux.")

(defvar display-time-24hr-format t "Show time in 24h formats.")
(defvar org-image-actual-width (/ (display-pixel-width) 3))

(defvar custom-blue "#718591" "Set cursor color.")

(provide 'init-defs)
;;; init-defs.el ends here
