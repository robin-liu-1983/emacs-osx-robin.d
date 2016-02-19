;;; setup slime
;; (global-set-key [f12] 'slime)
;; (global-set-key [C-f12] 'slime)


(add-to-list 'load-path "~/.emacs.d/slime2/")
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(require 'slime)
(slime-setup '(slime-fancy))

(provide 'setup-slime)
