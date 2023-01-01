(require 'package)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

(use-package evil
  :ensure t
  :config
    (evil-mode)
    (evil-set-undo-system 'undo-redo))

;; Agda
(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))

(load-theme 'adwaita)
