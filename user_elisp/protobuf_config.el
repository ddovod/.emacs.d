;;; package --- Summary
;;; Commentary:
;;; Code:


(require 'flycheck)
(require 'protobuf-mode)
(eval-after-load 'flycheck
  '(require 'flycheck-protobuf))
(add-to-list 'flycheck-checkers 'protobuf-protoc-reporter t)

(provide 'protobuf_config)

;;; protobuf_config.el ends here
