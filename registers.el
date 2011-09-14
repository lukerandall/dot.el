;; registers to allow quick access of files using C-x r j CHAR
(dolist (r `((?i (file . ,(concat dotfiles-dir "init.el")))
             (?b (file . ,(concat dotfiles-dir "bindings.el")))
             (?r (file . ,(concat dotfiles-dir "registers.el")))
             (?c (file . ,(concat dotfiles-dir "commands")))))
  (set-register (car r) (cadr r)))

(provide 'registers)
