;;; java-imports-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "java-imports" "java-imports.el" (22197 53413
;;;;;;  0 0))
;;; Generated autoloads from java-imports.el

(autoload 'java-imports-scan-file "java-imports" "\
Scans a java-mode buffer, adding any import class -> package
mappings to the import cache. If called with a prefix arguments
overwrites any existing cache entries for the file.

\(fn)" t nil)

(autoload 'java-imports-list-imports "java-imports" "\
Return a list of all fully-qualified packages in the current
Java-mode buffer

\(fn)" t nil)

(autoload 'java-imports-add-import-with-package "java-imports" "\
Add an import for the class for the name and package. Uses no caching.

\(fn CLASS-NAME PACKAGE)" t nil)

(autoload 'java-imports-add-import "java-imports" "\
Import the Java class for the symbol at point. Uses the symbol
at the point for the class name, ask for a confirmation of the
class name before adding it.

Checks the import cache to see if a package entry exists for the
given class. If found, adds an import statement for the class. If
not found, prompts for the package and saves it to the cache.

If called with a prefix argument, overwrites the package for an
already-existing class name.

\(fn CLASS-NAME)" t nil)

(autoload 'java-imports-add-import-dwim "java-imports" "\
Add an import statement for the class at point. If no class is
found, prompt for the class name. If the class's package already
exists in the cache, add it and return, otherwise prompt for the
package and cache it for future statements.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; java-imports-autoloads.el ends here
