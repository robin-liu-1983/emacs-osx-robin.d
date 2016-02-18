                                     ; ESS set
;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/ESS2/lisp/")
(require 'ess-site)
(load "ess-site")
;; (global-set-key [f11] 'R)
;; (global-set-key [C-f11] 'R)

(setq ess-use-auto-complete t)

;;;;;;;;;;;;;;;;;;;;;;;;
                                        ;open hs-mode
;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'ess-mode-hook 'hs-minor-mode)

;;;;;;;;;;;;;;;;;;;;;
                                        ;smartparens
;;;;;;;;;;;;;;;;;;;;;
(require 'smartparens-config)
(show-smartparens-global-mode t)
(smartparens-global-mode t)

;;;;;;;;;;;;;;;;;;;;;
                                        ;rainbow mode
;;;;;;;;;;;;;;;;;;;;;
(require 'rainbow-mode)
(dolist (hook '(ess-mode-hook inferior-ess-mode-hook))
  (add-hook hook 'rainbow-turn-on))

;;;;;;;;;;;;;;
                                        ;rainbow-delimiters
;;;;;;;;;;;;;;
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'ess-mode-hook 'rainbow-delimiters-mode)

(provide 'setup-ess)
