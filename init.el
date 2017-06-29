(require 'package) ;; You might already have this line

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(company-auto-complete t)
 '(company-minimum-prefix-length 1)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("c616e584f7268aa3b63d08045a912b50863a34e7ea83e35fcab8537b75741956" default)))
 '(inhibit-default-init t)
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-echo-area-message "")
 '(inhibit-startup-screen t)
 '(initial-buffer-choice (quote remember-notes))
 '(package-selected-packages
   (quote
    (shell-pop airline-themes powerline linum-relative evil-paredit evil neotree cider paredit rainbow-delimiters which-key company)))
 '(shell-pop-universal-key "²"))

(require 'shell-pop)
; Fix shell layout break since emacs25
(push (cons "\\*shell\\*" display-buffer--same-window-action) display-buffer-alist)


(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(require 'linum-relative)
(global-linum-mode 1)
(linum-relative-mode 1)
(setq linum-relative-current-symbol "=")

(require 'evil)
(evil-mode 1)

(require 'powerline)
(powerline-default-theme)

(require 'airline-themes)
(load-theme 'airline-kolor)

(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)

(add-to-list 'exec-path "~/.bin")
(windmove-default-keybindings 'meta)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'cider-mode-hook #'rainbow-delimiters-mode)
(add-hook 'cider-mode-hook #'paredit-mode)
(add-hook 'cider-mode-hook #'aggressive-indent-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
