;;; flycheck-cstyle.el --- Integrate cstyle with flycheck
;; Copyright (c) 2016 Alex Murray
;;
;; Author: Alex Murray <murray.alex@gmail.com>
;; Maintainer: Alex Murray <murray.alex@gmail.com>
;; URL: https://github.com/alexmurray/flycheck-cstyle
;; Package-Version: 20160126.1916
;; Version: 0.1
;; Package-Requires: ((flycheck "0.24") (emacs "24.4"))

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; This packages integrates cstyle with flycheck to automatically check the
;; style of your C/C++ code on the fly.
;;
;; To enable:
;;
;; (require 'flycheck-cstyle)
;; (flycheck-cstyle-setup)
;;

;;; Code:
(require 'flycheck)

(defgroup flycheck-cstyle nil
  "Integrate cstyle with flycheck."
  :group 'flycheck)

(defcustom flycheck-cstyle-config
  "~/.cstyle"
  "Configuration to use with cstyle.")

(flycheck-define-checker cstyle
  "A checker using cstyle.

See `https://github.com/alexmurray/cstyle/'."
  :command ("cstyle"
            (eval (list "--config" (expand-file-name flycheck-cstyle-config)))
            source)
  :error-patterns ((info line-start (file-name) ":" line ":" column ":"
                         (message (minimal-match (one-or-more anything)))
                         line-end))
  :modes c-mode c++-mode)

;;;###autoload
(defun flycheck-cstyle-setup ()
  "Setup flycheck-cstyle.

Add `cstyle' to `flycheck-checkers'."
  (interactive)
  (add-to-list 'flycheck-checkers 'cstyle))

(provide 'flycheck-cstyle)

;;; flycheck-cstyle.el ends here
