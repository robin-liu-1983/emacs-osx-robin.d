;;; setup-basic 4 chinese --- r0b1n

;;(tool-bar-mode 0)
(menu-bar-mode 1)
;;(scroll-bar-mode t)
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)
(setq initial-scratch-message "")
(line-number-mode t)
(global-linum-mode t)
(xterm-mouse-mode t)

(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")
;;(set-locale-environment "UTF-8")
;;(set-language-environment 'Chinese-GB)

;;(set-default-font "Dejavu Mono 16")
(set-default-font "SimKai 16")


(setq global-mark-ring-max 5000         ; increase mark ring to contains 5000 entries
      mark-ring-max 5000                ; increase kill ring to contains 5000 entries
      mode-require-final-newline t      ; add a newline to end of file
      tab-width 4                       ; default to 4 visible spaces to display a tab
      )

;;; ---------------------
(prefer-coding-system 'utf-8)
(prefer-coding-system 'gb18030)
(prefer-coding-system 'gbk)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'utf-16)
(prefer-coding-system 'utf-8)
;;; ---------------------

(provide 'setup-basic)
