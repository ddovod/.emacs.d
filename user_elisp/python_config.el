;;; package --- Summary
;;; Commentary:
;;; Code:

(pyvenv-workon "emacs_python3")

(require 'elpy)
(elpy-enable)
(setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
(setq elpy-rpc-backend "jedi")
(elpy-use-ipython)

()

(provide 'python_config)
;;; python_config.el ends here
