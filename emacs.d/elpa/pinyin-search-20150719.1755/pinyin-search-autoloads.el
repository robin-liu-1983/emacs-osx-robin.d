;;; pinyin-search-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "pinyin-search" "pinyin-search.el" (22197 53334
;;;;;;  0 0))
;;; Generated autoloads from pinyin-search.el

(autoload 'isearch-toggle-pinyin "pinyin-search" "\
Toggle pinyin in searching on or off.
Toggles the value of the variable `pinyin-search-activated'.

\(fn)" t nil)

(autoload 'isearch-forward-pinyin "pinyin-search" "\
Search Chinese forward by Pinyin.

\(fn)" t nil)

(autoload 'isearch-backward-pinyin "pinyin-search" "\
Search Chinese backward by Pinyin.

\(fn)" t nil)

(defalias 'pinyin-search 'isearch-forward-pinyin)

(defalias 'pinyin-search-backward 'isearch-backward-pinyin)

(define-key isearch-mode-map "\363p" #'isearch-toggle-pinyin)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; pinyin-search-autoloads.el ends here
