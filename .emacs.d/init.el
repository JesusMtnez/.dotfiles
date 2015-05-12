;; MELPA and Mrmalade repos for packages.
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; ido-vertical-mode package
(require 'ido-vertical-mode)
(ido-mode t)
(ido-vertical-mode t)

;; common lisp package
(require 'cl)

;; multi-term package
;; (add-to-list 'load-path "~/.emacs.d/elpa/multi-term")
;; (require 'multi-term)
;; (setq multi-term-program "/usr/local/bin/zsh")
;; (setq multi-termi-dir "~/")

;; web-mode package
(require 'web-mode)
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-script-padding 2)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-enable-current-column-highlight t)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; emmet-mode package
(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

;; auto-complete package
(require 'auto-complete)
(global-auto-complete-mode t)

;; move-lines package
(add-to-list 'load-path "~/.emacs.d/elpa/move-lines")
(require 'move-lines)
(move-lines-binding)

;; projectile package
;; (require 'projectile)
;; (projectile-global-mode t)

;; neotree package
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; magit package
(require 'magit)
(setq magit-last-seen-setup-instructions "1.4.0")

;; markdown package
(require 'markdown-mode)
(autoload 'gfm-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(eval-after-load 'gfm-mode '(define-key gfm-mode (kbd "C-RET") 'markdown-insert-list-item))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.mdown\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))

;; linum-off package
(add-to-list 'load-path "~/.emacs.d/elpa/linum-off")
(require 'linum-off)

;; undo-tree package
(require 'undo-tree)
(global-undo-tree-mode t)

;; livedown package
(add-to-list 'load-path "~/.emacs.d/elpa/emacs-livedown")
(require 'livedown)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ciao-first-indent-width 2)
 '(ciao-indent-width 2)
 '(livedown:autostart t)
 '(livedown:open t)
 '(livedown:port 1337))
    ; port for livedown server

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; My personal configurations ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Solarized Dark Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized")
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
(enable-theme 'solarized)

(menu-bar-mode -1)
(tool-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(scroll-bar-mode -1)
(show-paren-mode t)
(setq show-paren-style 'expression)
(column-number-mode t)
(electric-pair-mode t)
(delete-selection-mode t)
(global-linum-mode t)
(setq linum-format "%4d ")
(global-hl-line-mode t)
(global-visual-line-mode t)
(setq make-backup-file nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default tab-always-indent nil)
;; Font configuration
(set-face-attribute 'default nil :font "Monaco")
(set-frame-font "Monaco 12" nil t)
;; Encoding configuration
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; (setq mac-option-key-is-meta nil)
;; (setq mac-command-key-is-meta t)
;; (setq mac-command-modifier 'meta)
;; (setq mac-option-modifier nil)
;; (setq inhibit-startup-screen t)

;; Comment line/region function. Bind to C-c C-c
(defun comment-or-uncomment-region-or-line ()
  "Comments or uncomments the region or the current line if there's no active region."
  (interactive)
  (let (beg end)
    (if (region-active-p)
        (setq beg (region-beginning) end (region-end))
      (setq beg (line-beginning-position) end (line-end-position)))
            (comment-or-uncomment-region beg end)))

;; Key bindings
(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "C-x C-k") 'kill-this-buffer)
(global-set-key (kbd "C-z")     'undo-tree-undo)
(global-set-key (kbd "C-S-z")   'undo-tree-redo)

;; TEMPORARY - Ciao configuration - Prolog
(if (file-exists-p "/usr/local/lib/ciao/ciao-1.14/ciao-mode-init.el")
    (load-file "/usr/local/lib/ciao/ciao-1.14/ciao-mode-init.el"))

;; CHECK LATER
;; (require 'js2-mode)
;; (require 'skewer-mode)
;; (add-to-list 'load-path "~/.emacs.d/elpa/ac-js2")
;; (require 'ac-js2)
;; (setq ac-js2-evaluate-calls t)
;; (add-hook 'js-mode-hook 'js2-minor-mode)
;; (add-hook 'js2-mode-hook 'ac-js2-mode)
;; (require 'smart-mode-line)
;; (setq sml/no-confirm-load-theme t)
;; (setq sml/theme 'dark)
;; (setq sml/no-confirm-load-theme t)
;; (sml/setup)