;;; abc-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "abc-mode" "abc-mode.el" (22197 50581 0 0))
;;; Generated autoloads from abc-mode.el

(add-to-list 'auto-mode-alist '("\\.abp\\'" . abc-mode))

(add-to-list 'auto-mode-alist '("\\.abc\\'" . abc-mode))

(when (require 'autoinsert nil t) (add-to-list 'auto-insert-alist '(abc-mode . abc-skeleton)))

(autoload 'abc-mode "abc-mode" "\
Major mode for editing abc music files.

The preprocessor (if present) is automatically run before abc2ps and
abc2MIDI (also abc2abc, see `abc-preprocess').  If abc2MIDI is run,
the preprocessor is run with an additional macro flag specified by
`abc-pp-midi-macro'.

Basic Commands
===== ========

Editing Songs
------- -----
\\[abc-skeleton]	insert new song (`abc-skeleton')
\\[abc-insert-instrument]	insert MIDI instrument
\\[abc-renumber-songs]	renumber songs in buffer
\\[abc-mouse]	enable mouse input

Motion Commands
------ --------
\\[backward-sentence]	beginning of bar (or sentence if in text)
\\[forward-sentence]	end of bar (or sentence)
\\[abc-forward-song]	forward song
\\[abc-backward-song]	backward song
\\[abc-list-buffer-songs]	list songs in the current buffer

If `abc-use-song-as-page-delimiter' is non-nil, page motion commands
will consider songs to mark page boundaries.

Musical Insertions
------- ----------
\\[abc-slur-region]	place slur mark around the region
\\[abc-diminuendo-region]	place diminuendo mark around the region
\\[abc-crescendo-region]	place crescendo mark around the region

abc2ps Commands (Postscript output)
------ --------
The universal prefix arg will cause prompting for preprocessor options.
\\[abc-run-abc2ps-all]	run on the buffer (prompts for options)
\\[abc-run-abc2ps-one]	run on current song (prompts for options)
\\[abc-set-abc2ps-option-set]	set the default option set

abc2midi Commands (MIDI output)
-------- --------
The universal prefix arg will cause prompting for preprocessor options.
\\[abc-run-abc2midi]	run on the buffer (prompts for options)
\\[abc-run-abc2midi-one]	run on current song (prompts for options)

abc2abc Commands (abc output)
------- --------
The universal prefix arg will cause prompting for preprocessor options.
\\[abc-run-abc2abc]	run abc2abc on the buffer

abcpp Commands (abc output)
----- --------
The universal prefix will cause prompting for preprocessor options.
\\[abc-preprocess-buffer]	run the preprocessor on the buffer

This package is very customizable.  See the abc-mode group.  Run
\\[abc-customize] for easy access.

Check `abc-font-lock-keywords' for compatibility with the local
installation.

Use TeX-type quoting `` & '' for double quotes in lyrics.

\\{abc-mode-map}

\(fn)" t nil)

(autoload 'abc-skeleton "abc-mode" "\
Skeleton for a song

\(fn &optional STR ARG)" t nil)

(autoload 'abc-align-bars "abc-mode" "\
Align on bar lines \"|\" between BEGIN and END (region).

\(fn BEGIN END)" t nil)

(autoload 'abc-customize "abc-mode" "\
Customize `abc-mode' settings.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; abc-mode-autoloads.el ends here
