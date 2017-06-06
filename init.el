(require 'package) ;; You might already have this line

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
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
 '(custom-enabled-themes (quote (adwaita)))
 '(inhibit-default-init t)
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-echo-area-message "")
 '(inhibit-startup-screen t)
 '(initial-buffer-choice (quote remember-notes))
 '(package-selected-packages
   (quote
    (paredit rainbow-delimiters which-key company cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "gray"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "indian red"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "RoyalBlue2"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "gainsboro"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "saddle brown"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "cyan")))))

(add-to-list 'exec-path "~/.bin")
(windmove-default-keybindings 'meta)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'cider-mode-hook #'rainbow-delimiters-mode)
(add-hook 'cider-mode-hook #'paredit-mode)
(add-hook 'cider-mode-hook #'aggressive-indent-mode)
