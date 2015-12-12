;; .emacs

(custom-set-variables
 ;; uncomment to always end a file with a newline
 ;'(require-final-newline t)
 ;; uncomment to disable loading of "default.el" at startup
 ;'(inhibit-default-init t)
 ;; default to unified diffs
 '(diff-switches "-u"))

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
;;(require 'fill-column-indicator)
(require 'ido)
(ido-mode t)

;;autoload 'python-mode "python-mode" "Python Mode." t)
;;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;;(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;;(require 'ipython)
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport 't)
(setq ropemacs-enable-shortcuts nil) (setq ropemacs-local-prefix "C-c C-p")
;;if fail
;;(setq
;; python-shell-interpreter "ipython"
;; python-shell-interpreter-args ""
;; python-shell-prompt-regexp "In \\[[0-9]+\\]: "
;; python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
;; python-shell-completion-setup-code
;; "from IPython.core.completerlib import module_completion"
;; python-shell-completion-module-string-code
;; "';'.join(module_completion('''%s'''))\n"
;; python-shell-completion-string-code
;;    "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

;; Initialize Pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;; Initialize Rope
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

(elpy-enable)
(define-key yas-minor-mode-map (kbd "C-c l") 'yas-expand)
(define-key global-map (kbd "C-c o") 'iedit-mode)

;;(set 'jedi:server-command
;;     (list (executable-find "python")))
