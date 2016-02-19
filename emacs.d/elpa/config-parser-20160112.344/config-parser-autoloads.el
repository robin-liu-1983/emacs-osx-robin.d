;;; config-parser-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "config-parser" "config-parser.el" (22197 51967
;;;;;;  0 0))
;;; Generated autoloads from config-parser.el

(autoload 'config-parser-read "config-parser" "\
Read and parse a file(FILES is a string) or a list of files(FILES is a list of string), the result is an alist which car element is the section and cdr element is options in the section

options is also an alist like '(key . value) 

\(fn FILES &optional SEP)" nil nil)

(autoload 'config-parser-write "config-parser" "\
Write CONFIG-DATA in FILE with SEP as the delimiter

\(fn FILE CONFIG-DATA &optional SEP)" nil nil)

(autoload 'config-parser-sections "config-parser" "\
Return all the configuration section names

\(fn CONFIG-DATA)" nil nil)

(autoload 'config-parser-has-section "config-parser" "\
Return whether the given SECTION exists

\(fn CONFIG-DATA SECTION)" nil nil)

(autoload 'config-parser-items "config-parser" "\
return a list (name . value) for each option in the section. 

\(fn CONFIG-DATA SECTION)" nil nil)

(autoload 'config-parser-options "config-parser" "\
Return list of configuration options for the named SECTOIN

\(fn CONFIG-DATA SECTION)" nil nil)

(autoload 'config-parser-has-option "config-parser" "\
Return whether the given optioin exists in the given section

\(fn CONFIG-DATA SECTION OPTION)" nil nil)

(autoload 'config-parser-get-section "config-parser" "\
Return section data

\(fn CONFIG-DATA SECTION)" nil nil)

(autoload 'config-parser-get "config-parser" "\
Return a string value for the named option

\(fn CONFIG-DATA SECTION OPTION)" nil nil)

(autoload 'config-parser-get-number "config-parser" "\
like `config-parser-get' but convert valut to an number. If BASE, interpret STRING as a number in that base, default to be 10

\(fn CONFIG-DATA SECTION OPTION &optional BASE)" nil nil)

(autoload 'config-parser-get-boolean "config-parser" "\
like `config-parser-get' but convert valut to a boolean.

currently case insensitively defined as 0, false, no, off, nil \"\" for nil, 
otherwise for t).  Returns nil or otherwise. 

\(fn CONFIG-DATA SECTION OPTION)" nil nil)

(autoload 'config-parser-delete-section! "config-parser" "\
remove the given file section and all its options

\(fn CONFIG-DATA SECTION)" nil nil)

(autoload 'config-parser-delete-option! "config-parser" "\
Remove the given option from the given section

\(fn CONFIG-DATA SECTION OPTION)" nil nil)

(autoload 'config-parser-make-section "config-parser" "\


\(fn SECTION &rest OPTIONS)" nil nil)

(autoload 'config-parser-make-option "config-parser" "\


\(fn KEY VALUE)" nil nil)

(autoload 'config-parser-set! "config-parser" "\
set the given option

\(fn CONFIG-DATA SECTION OPTION VALUE &optional CREATE-P)" nil nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; config-parser-autoloads.el ends here
