;;; rpm-spec-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "rpm-spec-mode" "rpm-spec-mode.el" (22197 53330
;;;;;;  0 0))
;;; Generated autoloads from rpm-spec-mode.el

(autoload 'rpm-spec-mode "rpm-spec-mode" "\
Major mode for editing RPM spec files.
This is much like C mode except for the syntax of comments.  It uses
the same keymap as C mode and has the same variables for customizing
indentation.  It has its own abbrev table and its own syntax table.

Turning on RPM spec mode calls the value of the variable `rpm-spec-mode-hook'
with no args, if that value is non-nil.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.spec\\(\\.in\\)?$" . rpm-spec-mode))

(autoload 'rpmbuild-mode "rpm-spec-mode" "\


\(fn)" nil nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; rpm-spec-mode-autoloads.el ends here
