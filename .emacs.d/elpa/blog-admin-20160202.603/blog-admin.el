;;; blog-admin.el --- Blog admin for emacs with hexo/org-page supported  -*- lexical-binding: t; -*-

;; Copyright (C) 2016

;; Author:  code.falling@gmail.com
;; Keywords: tools, blog, org, hexo, org-page

;; Version: 0.1
;; Package-Requires: ((org "8.0") (ctable "0.1.1") (s "1.10.0") (f "0.17.3") (names "20151201.0"))

;; This program is free software; you can redistribute it and/or modify
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

;; (setq blog-admin-backend-path "~/blog")
;; (setq blog-admin-backend-type 'hexo)
;;

;;; Code:
(require 'org)
(require 'ctable)
(require 'names)

(require 'blog-admin-backend-hexo)
(require 'blog-admin-backend-org-page)

(define-namespace blog-admin-
;; namespace blog-admin

(defvar mode-buffer nil
  "Main buffer of blog-admin")

(defvar mode-hook nil
  "Hooks for mode")

;; keymap
(defvar mode-map nil
  "Keymap for mode")

(defvar table nil
  "blog admin summary table")

(defconst -table-help
  "Blog

s   ... Switch between publish and drafts
d   ... Delete current post
w   ... Write new post
RET ... Open current post
r   ... Refresh blog-admin

"
  "Help of table")

(defun -merge-keymap (keymap1 keymap2)
  (append keymap1
          (delq nil
                (mapcar
                 (lambda (x)
                   (if (or (not (consp x))
                           (assoc (car x) keymap1))
                       nil x))
                 keymap2))))


;; map
(defun load-map ()
  (setq mode-map (make-sparse-keymap))
  (define-key mode-map (kbd "<up>") 'ctbl:navi-move-up)
  (define-key mode-map (kbd "<down>") 'ctbl:navi-move-down)

  (define-key mode-map "d" #'delete-post)
  (define-key mode-map "s" (plist-get (blog-admin-backend-get-backend) :publish-unpublish-func))
  (define-key mode-map "w" (plist-get (blog-admin-backend-get-backend) :new-post-func))
  (define-key mode-map "r" 'refresh)
  (setq mode-map
        (-merge-keymap mode-map ctbl:table-mode-map)))

;; table

(defun -table-current-file ()
  (nth 3 (ctbl:cp-get-selected-data-row table))
  )

(defun -table-click ()
  "Click event for table"
  (find-file (-table-current-file)))



(defun -table-build (contents keymap)
  (insert -table-help)
  (let ((param (copy-ctbl:param ctbl:default-rendering-param)))
    (setf (ctbl:param-fixed-header param) t)
    (save-excursion (setq table (ctbl:create-table-component-region
                                 :param param
                                 :width  nil
                                 :height nil
                                 :keymap keymap
                                 :model
                                 (make-ctbl:model
                                  :data contents
                                  :sort-state '(-1 2)
                                  :column-model
                                  (list (make-ctbl:cmodel
                                         :title "Date"
                                         :sorter 'ctbl:sort-string-lessp
                                         :min-width 10
                                         :align 'left)
                                        (make-ctbl:cmodel
                                         :title "Publish"
                                         :align 'left
                                         :sorter 'ctbl:sort-string-lessp)
                                        (make-ctbl:cmodel
                                         :title "Title"
                                         :align 'left
                                         :min-width 40
                                         :max-width 120)
                                        )))))

    (ctbl:cp-add-click-hook table #'-table-click)
    ))

(defun delete-post ()
  "Delete post"
  (interactive)
  (let ( (file-path (-table-current-file)) )
    (if (y-or-n-p (format "Do you really want to delete %s" file-path))
        (progn
          (delete-file file-path)
          ;; remove asset directory if exist
          (let ((dir-path (file-name-sans-extension file-path)))
            (if (file-exists-p dir-path)
                (delete-directory dir-path t))
            )
          (refresh)
          ))))

(defun refresh ()
  "Refresh *Blog*"
  (interactive)
  (when mode-buffer
    (let ((old-point (point)))
      (kill-buffer mode-buffer)
      (load-map)
      (start)
      (goto-char old-point)
      )))
;; main

:autoload
(defun start ()
  "Blog admin"
  (interactive)
  (setq mode-buffer (get-buffer-create "*Blog*"))
  (switch-to-buffer mode-buffer)
  (setq buffer-read-only nil)
  (erase-buffer)
  (load-map)
  (-table-build (blog-admin-backend-build-datasource blog-admin-backend-type) mode-map)
  (mode)
  )

(define-derived-mode mode nil "Blog"
  "Major mode for blog-admin."
  (set (make-local-variable 'buffer-read-only) t))

) ;; namespace blog-admin end here

(provide 'blog-admin)
;;; blog-admin.el ends here
