

;; company configuration
(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))
(eval-after-load 'company
  '(delete 'company-semantic company-backends))
(setq company-clang-arguments '("-std=c++11"))
