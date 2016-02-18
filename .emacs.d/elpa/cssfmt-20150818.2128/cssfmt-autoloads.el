;;; cssfmt-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "cssfmt" "cssfmt.el" (22198 535 0 0))
;;; Generated autoloads from cssfmt.el

(autoload 'cssfmt-enable-on-save "cssfmt" "\
Add this to .emacs to run cssfmt on the current buffer when saving:
 (add-hook 'after-save-hook 'cssfmt-after-save).

Note that this will cause css-mode to get loaded the first time
you save any file, kind of defeating the point of autoloading.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; cssfmt-autoloads.el ends here
