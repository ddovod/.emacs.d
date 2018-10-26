;;; package --- Summary
;;; Commentary:
;;; Code:

(setq package-enable-at-startup nil)
(package-initialize)
(setq package-archives '(
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("elpy" . "http://jorgenschaefer.github.io/packages/")))

(provide 'packages_config)
;;; packages_config.el ends here
