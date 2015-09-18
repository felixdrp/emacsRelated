;; Deactivate backup
(setq auto-save-default nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (tango-dark)))
 '(js-indent-level 2)
 '(js-js-switch-tabs t)
 '(js2-basic-offset 2))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Jade-mode
(add-to-list 'load-path "~/.emacs.d/vendor/jade-mode")
(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl\\'" . sws-mode))

 ;; Web-mode
(add-to-list 'load-path "~/.emacs.d/vendor/web-mode")
(require 'web-mode)
;;(add-to-list 'auto-mode-alist '("\\.styl\\'" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))
;;(setq-default indent-tabs-mode nil)
;;(setq-default tab-width 2)
(defun emmet-mode-hook-settings ()
  "Hook for Emmet"
  (setq emmet-preview-default nil)
  (setq emmet-indentation 2))

(add-hook 'emmet-mode-hook 'emmet-mode-hook-settings) ;; indent 2 spaces.
(defun web-mode-hook-settings ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-indent-style 2)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-css-colorization t)
  (idle-highlight-mode 0)
  ;;    (font-lock-mode 0)
    )
(add-hook 'web-mode-hook 'web-mode-hook-settings)


;; Color theme oblivion
;; Changed :
;; (background-color . ,aluminium5)
;; (background-color . ,plum1)
          
(add-to-list 'load-path "~/.emacs.d/vendor/oblivion-emacs")
(require 'color-theme-oblivion)
(color-theme-oblivion)

;; Remove tabs
(setq-default indent-tabs-mode nil)

;; Prevent creation of backup files
(setq make-backup-files nil)

;; number line at left window
(custom-set-variables
 '(global-linum-mode t)
 '(column-number-mode t))

;;(setq linum-format "%d ")
(setq linum-format "%4d ")

