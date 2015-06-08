;;; init.el --- Bootstrap Emacs configuration

;;; Commentary:

;; This file loads Org-mode and then loads the rest of our Emacs
;; initialization from Emacs Lisp embedded in literate Org-mode files.

;;; Code:

;; Cask manages our package dependencies


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

;; Pallet allows us to use Cask in tandem with package.el
(require 'pallet)

;; Now load-up org-mode

(require 'ob-tangle)

;; Now actually load the .org file with the configuration

(org-babel-load-file 
 (expand-file-name "emacs.org" user-emacs-directory))

;; init.el ends
