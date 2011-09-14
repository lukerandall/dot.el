;; setup load path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path (concat dotfiles-dir "/color-theme"))
(add-to-list 'load-path (concat dotfiles-dir "/modes"))
(add-to-list 'load-path (concat dotfiles-dir "/eproject"))
(add-to-list 'load-path (concat dotfiles-dir "/eproject/contrib"))
(add-to-list 'load-path (concat dotfiles-dir "/eproject/lang"))

(add-to-list 'exec-path "/usr/local/bin")

(toggle-scroll-bar -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (require 'color-theme-ir-black)
     (color-theme-ir-black)))

;; generally useful things
(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

;; starter kit stuff
(require 'bindings)
(require 'defuns)
(require 'misc)
(require 'registers)

;; elpa
(add-to-list 'load-path (concat dotfiles-dir "/elpa"))
(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")))
  (add-to-list 'package-archives source t))
(package-initialize)

;; eproject
(require 'eproject)
(require 'eproject-extras)
(require 'eproject-tags)
(require 'eproject-lang-ruby)
(require 'eproject-lang-haskell)
(defvar eproject-tags-etags "ctags")
(defvar eproject-completing-read-function 'eproject--ido-completing-read)

;; auto-indent return, yanks, etc
(setq auto-indent-key-for-end-of-line-then-newline "<M-return>")
(require 'auto-indent-mode)
(auto-indent-global-mode)

;; smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commmands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ;; Old M-x

;; ido
(setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1)

(require 'toggle-buffer)

(require 'magit)
(require 'ruby-mode)
(require 'rinari)
(require 'haml-mode)
(require 'sass-mode)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(require 'markdown-mode)
(setq auto-mode-alist (cons '("\\.text" . markdown-mode) auto-mode-alist))

(require 'find-file-in-project)
(require 'gist)
(require 'htmlize)
(require 'kill-ring-search)

(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(require 'recentf)

;; enable recent files mode.
(recentf-mode t)

; 50 files ought to be enough.
(setq recentf-max-saved-items 50)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(custom-set-variables
 '(eproject-completing-read-function (quote eproject--ido-completing-read)))
