;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------


(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
;; (add-to-list 'package-archives
;;              '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    ein
    elpy
    flycheck
    material-theme
    py-autopep8))

(mapc '(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin"))
(setq exec-path (append exec-path '("/Library/TeX/texbin")))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/Cellar/python3/3.5.1/bin/"))
(setq exec-path (append exec-path '("/usr/local/Cellar/python3/3.5.1/bin/")))

(defalias 'yes-or-no-p 'y-or-n-p)

(add-to-list 'load-path "~/.emacs.d/custom")

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material-light t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally



;; Package: yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Package: smartparens
(require 'smartparens-config)
(setq sp-base-key-bindings 'paredit)
(setq sp-autoskip-closing-pair 'always)
(setq sp-hybrid-kill-entire-symbol nil)
(sp-use-paredit-bindings)

(show-smartparens-global-mode +1)
(smartparens-global-mode 1)

;; PYTHON CONFIGURATION
;; --------------------------------------

(elpy-enable)
;; (setq elpy-rpc-python-command "python3")  
(elpy-use-ipython)


;; use flycheck not flymake with elpy
;; (when (require 'flycheck nil t)
;;   (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;   (add-hook 'elpy-mode-hook 'flycheck-mode))

;; (flymake-mode t)
(global-flycheck-mode t)

;;; setup sr-speedbar
(require 'sr-speedbar)
;; (speedbar-add-supported-extension ".R")
(global-set-key (kbd "<f3>") (lambda()
                               (interactive) (sr-speedbar-toggle)))

;; hot key setup
(require 'setup-keys)

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;;;setup language support
(require 'markdown-mode)
(require 'php-mode)
(require 'smarty-mode)

;; ess setup
(require 'setup-ess)
(require 'markdown-preview-eww)

;; add java supports
;; (add-to-list 'auto-mode-alist '("\\.java\\'" . java-mode))

;; slime setup
(require 'setup-slime)



(require 'osx-pseudo-daemon)

(defun frame-setting ()
  (interactive)
  ;; Setting English Font
  (set-face-attribute
   'default nil :font "SimKai 16")

  )
(global-set-key (kbd "C-x g") 'magit-status)

(require 'mon-css-color)
(autoload 'css-mode "css-mode" t)
(autoload  'css-color-mode "mon-css-color" t)
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

(frame-setting)

(require 'setup-basic)

;; (setq-default inferior-R-program-name
;;              "/usr/local/bin/R")
;;; init.el ends here
