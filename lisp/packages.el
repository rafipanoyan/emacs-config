(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(customize-set-variable 'package-selected-packages
                        '(
                          counsel
                          counsel-tramp
                          doom-themes
                          magit))

(defun cr-install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package package-selected-packages)
    (unless (package-installed-p package)
      (message (format "Installing %s..." package))
      (package-install package))))

(package-initialize)
(cr-install-packages)

(provide 'packages)