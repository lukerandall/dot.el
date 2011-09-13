;; setup load path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path (concat dotfiles-dir "/color-theme"))
(add-to-list 'load-path (concat dotfiles-dir "/modes"))

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

;; elpa
(add-to-list 'load-path (concat dotfiles-dir "/elpa"))
(require 'package)
(package-initialize)

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

;; smart-tab
(require 'smart-tab)
(global-smart-tab-mode 1)

(require 'magit)
(require 'ruby-mode)
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
(require 'lusty-explorer)

(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)
