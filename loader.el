;;=======================================================================================================================
;; 
;; global search path
;;
;;=======================================================================================================================
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet/common")
(add-to-list 'load-path "~/.emacs.d/plugins/ecb")

;;=======================================================================================================================
;;
;; cedet
;;
;;=======================================================================================================================
(load "cedet.el")

;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; Enable EDE for a pre-existing C++ project
;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:

;; * This enables the database and idle reparse engines
(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode,
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)


;; ecb
(require 'ecb)

;; load configurations
(load "base.el")

