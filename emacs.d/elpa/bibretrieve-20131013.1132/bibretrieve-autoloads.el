;;; bibretrieve-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "bibretrieve-base" "bibretrieve-base.el" (22197
;;;;;;  51989 0 0))
;;; Generated autoloads from bibretrieve-base.el

(autoload 'bibretrieve "bibretrieve-base" "\
Search the web for bibliography entries.

After prompting for author and title, searches on the web, using the
backends specified by the customization variable
`bibretrieve-backends'.  A selection process (using RefTeX Selection)
allows to select entries to add to the current buffer or to a
bibliography file.

 When called with a `C-u' prefix, permits to select the backend and the
 timeout for the search.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("bibretrieve-pkg.el" "bibretrieve.el")
;;;;;;  (22197 51989 973797 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; bibretrieve-autoloads.el ends here
