;;; sphinx-frontend-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "sphinx-frontend" "sphinx-frontend.el" (22197
;;;;;;  47889 0 0))
;;; Generated autoloads from sphinx-frontend.el

(autoload 'sphinx-build-html "sphinx-frontend" "\
Compiles the rst file to html via sphinx and shows the output in a buffer.
Without `arg' saves current file.

\(fn ARG)" t nil)

(autoload 'sphinx-build-latex "sphinx-frontend" "\
Compiles the rst file to latex via sphinx and shows the output in a buffer.
Without `arg' saves current file.

\(fn ARG)" t nil)

(autoload 'sphinx-run-pdflatex "sphinx-frontend" "\
Ad-hoc call pdflatex for LaTeX-builded documentation.

\(fn)" t nil)

(autoload 'sphinx-clean-html "sphinx-frontend" "\
Removes `sphinx-output-dir-html' dir.

\(fn)" t nil)

(autoload 'sphinx-clean-pdf "sphinx-frontend" "\
Removes `sphinx-output-dir-pdf' dir.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; sphinx-frontend-autoloads.el ends here
