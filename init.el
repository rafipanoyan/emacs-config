;;;* Autoloads
(defconst user-emacs-directory-lisp (expand-file-name "lisp" user-emacs-directory)
  "My Emacs configuration location.")

(defun cr-update-autoloads ()
  "Update autoload functions and register them into a loaddefs file."
  (interactive)
  (cd user-emacs-directory-lisp)
  (let ((generated-autoload-file (expand-file-name "loaddefs.el" user-emacs-directory-lisp)))
    (mapcar #'update-directory-autoloads '("." "libs" "modules")))
  (message "Autoloads has been generated."))

(add-hook 'kill-emacs-hook #'cr-update-autoloads)

;;;* Core
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(add-to-list 'load-path user-emacs-directory-lisp)
(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory-lisp))

(require 'packages)
(require 'hooks)

;;;* Global modes
(blink-cursor-mode -1)
(global-auto-revert-mode 1)
(show-paren-mode 1)
(ivy-mode 1)