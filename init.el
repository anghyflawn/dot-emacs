;;; init.el --- Bootstrap Emacs configuration

;;; Commentary:

;; This file loads Org-mode and then loads the rest of our Emacs
;; initialization from Emacs Lisp embedded in literate Org-mode files.

;;; Code:

;; Cask manages our package dependencies


(require 'cask "/usr/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

;; Pallet allows us to use Cask in tandem with package.el
(require 'pallet)

;; Load encryption

(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance '("crypt")
      org-crypt-key nil)

;; Now load-up org-mode

(require 'ob-tangle)

;; Now actually load the .org file with the configuration

(org-babel-load-file 
 (expand-file-name "emacs.org" user-emacs-directory))

;; init.el ends
