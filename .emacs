;; Mule-UCS
(require 'un-define)
(require 'jisx0213)
;; japanese 
(set-language-environment "Japanese")
(set-terminal-coding-system 'sjis)
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8)
;;
;;(set-selection-coding-system 'utf-16le)

;; 
(global-font-lock-mode t)
(set-scroll-bar-mode 'right)

;; add emacs lisp directory
(add-to-list 'load-path "~/.emacs.d")

;; Check if we are on my Windows 7 box
(setq is-windows (string= system-type "windows-nt"))


;; gtags mode
(autoload 'gtags-mode "gtags" "" t)
(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag)
         (local-set-key "\M-r" 'gtags-find-rtag)
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))
(add-hook 'c-mode-common-hook
	  '(lambda()
             (gtags-mode 1)
	     (setq tab-width 4)
             ))

;; big ol' windows hacks
(if is-windows 
    (progn 
      (require 'cygwin-mount)
      (cygwin-mount-activate)
      (add-hook 'comint-output-filter-functions
                'shell-strip-ctrl-m nil t)
      (add-hook 'comint-output-filter-functions
                'comint-watch-for-password-prompt nil t)
      (setq explicit-shell-file-name "bash.exe")
      (setq shell-file-name explicit-shell-file-name)))
