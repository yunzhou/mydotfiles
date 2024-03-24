(setq inhibit-startup-message t)


(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
'("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  )

(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
    ))
(use-package avy
:ensure t
:bind ("M-s" . avy-goto-char))

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))


;; my setting

(tool-bar-mode -1)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#1e1e2e" :foreground "#cdd6f4" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 155 :width normal :foundry "nil" :family "Menlo"))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(region ((t (:extend t :background "dark magenta")))))
;;my keybind
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-i") 'imenu)

