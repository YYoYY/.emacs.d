;;=======================================================================================================================
;; 
;; global settings
;;
;;=======================================================================================================================
;; inhibit start up message
(setq inhibit-startup-message t)
;; semantics hight
(global-font-lock-mode t)
;; show parentheses match
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;; column number
(column-number-mode t)
;; cedet
(require 'cedet)
(global-set-key [(f4)] 'speedbar-get-focus)
;; (define-key c-mode-base-map [(meta ?/)] 'sematic-ia-complete-symbol-menu)
;; ecb 
;; (require 'ecb)
;;=======================================================================================================================
;; 
;; c mode:
;;        k&r style
;;        cscope
;;
;;=======================================================================================================================
;; k&r style
(setq c-default-style '((c-mode . "k&r")))
;; cscope
(require 'xcscope)
;; show file path
(setq frame-title-format 
      '("%S" (buffer-file-name "%f"
			       (dired-directory dired-dirctory "%b"))))

;;=======================================================================================================================
;; 
;; lua mode
;;
;;=======================================================================================================================

(add-to-list 'load-path "~/.emacs.d")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))