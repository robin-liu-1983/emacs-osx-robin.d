;;; xml-quotes-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "mail-signature-quotes" "mail-signature-quotes.el"
;;;;;;  (22197 53300 0 0))
;;; Generated autoloads from mail-signature-quotes.el

(autoload 'xml-quotes-add-mail-signature "mail-signature-quotes" "\
Inserts my signature and a mail quote

\(fn &optional QUOTENUM)" t nil)

(autoload 'xml-quotes-mail-signature "mail-signature-quotes" "\
Returns a formatted mail signature

\(fn SIGFILE &optional QUOTENUM)" nil nil)

;;;***

;;;### (autoloads nil "xml-quotes" "xml-quotes.el" (22197 53300 0
;;;;;;  0))
;;; Generated autoloads from xml-quotes.el

(autoload 'xml-quotes-quote-count "xml-quotes" "\
Return the total number of quotations.

\(fn)" nil nil)

(autoload 'xml-quotes-quotation "xml-quotes" "\
Return a quotation, with attribution.  If num-or-random is a number, return that quotation.  If it is t, return a random quotation.  Otherwise return the current quotation.

\(fn &optional NUM-OR-RANDOM)" nil nil)

;;;***

;;;### (autoloads nil nil ("xml-quotes-pkg.el") (22197 53300 385975
;;;;;;  0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; xml-quotes-autoloads.el ends here
