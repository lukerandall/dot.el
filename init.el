;; setup load path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

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

(require 'find-file-in-project)
(require 'gist)
(require 'htmlize)
(require 'kill-ring-search)
(require 'lusty-explorer)

(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)
