Highlight the current sentence using `hl-sentence-face'.

To use this package, add the following code to your `emacs-init-file'

(require 'hl-sentence)
(add-hook 'YOUR-MODE-HOOK 'hl-sentence-mode)
(set-face-attribute 'hl-sentence-face nil
                    :foreground "#444")

Please send bug reports to
https://github.com/milkypostman/hl-sentence/issues

This mode started out as a bit of elisp at
http://www.emacswiki.org/emacs/SentenceHighlight by Aaron Hawley.
