(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b"))))

(setq echo-keystrokes 0.1
      inhibit-startup-message t
      inhibit-startup-echo-area-message t
      transient-mark-mode t
      color-theme-is-global t
      require-final-newline t
      uniquify-buffer-name-style 'forward
      ffap-machine-p-known 'reject
      whitespace-style '(trailing lines space-before-tab
                                  face indentation space-after-tab)
      whitespace-line-column 100
      save-place-file (concat dotfiles-dir "places"))

;; Transparently open compressed files
(auto-compression-mode t)

;; Enable syntax highlighting for older Emacsen that have it off
(global-font-lock-mode t)

;; Save a list of recent files visited.
(recentf-mode 1)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; make emacs use the clipboard
(setq x-select-enable-clipboard t)

;; Don't clutter up directories with files~
(setq backup-directory-alist `(("." . ,(expand-file-name
                                        (concat dotfiles-dir "backups")))))

;; Line numbers
(global-linum-mode 1)

;; Automatically add newlines
(setq next-line-add-newlines t)

(fset 'yes-or-no-p 'y-or-n-p)

(setq confirm-nonexistent-file-or-buffer nil)

(setq ido-create-new-buffer 'always)

(setq indent-tabs-mode nil)

(setq tramp-default-method "ssh")

(provide 'misc)
