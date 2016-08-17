(package-initialize)

;;Multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C-c C-h") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-j") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-k") 'mc/mark-all-like-this)

;;Some other multiple-cursors things that I can't/won't get working
;;(global-set-key (kbd "C-.") 'mc/mark-more-like-this-extended)
;;(global-set-key (kbd "C--") 'mc/mark-previous-like-this)
;;(global-set-key (kbd "C-c C-j") 'mc/unmark-previous-like-this)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-start t)
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
    ("79a3f477ac0cb4a106f78b6109614e991564a5c2467c36e6e854d4bc1102e178" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(global-auto-complete-mode t)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(line-number-mode t)
 '(menu-bar-mode nil)
 '(mode-line-format
   (quote
    ("%e" mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification sml/pos-id-separator mode-line-position
     (vc-mode vc-mode)
     sml/pre-modes-separator mode-line-modes mode-line-misc-info mode-line-end-spaces)))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("Melpa" . "http://melpa.milkbox.net/packages/"))))
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(yas-global-mode t nil (yasnippet))
 '(yas-snippet-dirs
   (quote
    ("~/.emacs.d/elpa/yasnippet-20151227.1550/snippets" yas-installed-snippets-dir)) nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(sml/numbers-separator ((t (:inherit sml/col-number)))))
(setq backup-directory-alist `(("." . "~/.saves")))
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(defvar my-auto-save-folder "~/.autosaves/"); folder for auto-saves
(setq auto-save-file-name-transforms
                `((".*" , my-auto-save-folder t)))
(require 'smart-mode-line)
(sml/setup)
(setq c-default-style "linux"
                c-basic-offset 4)


(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq-default mode-line-format
	      '("%e" mode-line-front-space
		;; Standard info about the current buffer
		mode-line-mule-info
		mode-line-client
		mode-line-modified
		mode-line-remote
		mode-line-frame-identification
		mode-line-buffer-identification " " mode-line-position
		;; Some specific information about the current buffer:
		lunaryorn-projectile-mode-line ; Project information
		(vc-mode lunaryorn-vc-mode-line) ; VC information
		(flycheck-mode flycheck-mode-line) ; Flycheck status
		(multiple-cursors-mode mc/mode-line) ; Number of cursors
		;; Misc information, notably battery state and function name
		" "
		mode-line-misc-info
		;; And the modes, which I don't really care for anyway
		" " mode-line-modes mode-line-end-spaces))
(setenv "PATH" "/usr/local/bin:/Library/TeX/texbin/:$PATH" t)
(setq exec-path (append exec-path '("/Library/TeX/texbin")))

(require 'evil)
(evil-mode 1)
