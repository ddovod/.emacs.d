;;; package --- Summary
;;; Commentary:
;;; Code:
;;
;; !!! KEEP YOUR CONFIG CLEAN !!!
;;



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/user_elisp/packages_config.el")
(load "~/.emacs.d/user_elisp/theme_config.el")
(load "~/.emacs.d/user_elisp/font_config.el")
(load "~/.emacs.d/user_elisp/company_config.el")
(load "~/.emacs.d/user_elisp/windmove_config.el")
(load "~/.emacs.d/user_elisp/backup_config.el")
(load "~/.emacs.d/user_elisp/ido_config.el")
(load "~/.emacs.d/user_elisp/multiple_cursors_config.el")
(load "~/.emacs.d/user_elisp/yaml_config.el")
(load "~/.emacs.d/user_elisp/projectile_config.el")
(load "~/.emacs.d/user_elisp/cpp_config.el")
(load "~/.emacs.d/user_elisp/erlang_config.el")
(load "~/.emacs.d/user_elisp/flycheck_config.el")
(load "~/.emacs.d/user_elisp/yasnippet_config.el")
(load "~/.emacs.d/user_elisp/git_config.el")
(load "~/.emacs.d/user_elisp/expand_region_config.el")
(load "~/.emacs.d/user_elisp/disable_flymake_config.el")
(load "~/.emacs.d/user_elisp/clean_mode_line_config.el")
(load "~/.emacs.d/user_elisp/org_config.el")
(load "~/.emacs.d/user_elisp/python_config.el")
(load "~/.emacs.d/user_elisp/other_stuff_config.el")

(exec-path-from-shell-initialize)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(package-selected-packages
   (quote
    (cquery lsp-ui company-lsp ycmd use-package groovy-mode counsel yascroll yaml-mode visual-regexp tuareg super-save string-inflection stickyfunc-enhance speed-type spaceline solarized-theme sml-modeline smex smartparens smart-mode-line shackle robe realgud readline-complete php-mode page-break-lines org-bullets omnisharp nyan-mode multiple-cursors magit-gitflow latex-preview-pane keyfreq json-mode imenu-anywhere iedit ido-vertical-mode ido-ubiquitous ido-hacks htmlize highlight-thing highlight-symbol glsl-mode flycheck-protobuf flycheck-ocaml flx-ido drag-stuff csv-mode connection company-auctex bury-successful-compilation backup-each-save auto-highlight-symbol)))
 '(safe-local-variable-values
   (quote
    ((projectile-project-run-cmd . "../build/jet.py run --Platform=Linux --Configuration=Debug --Editor=Enabled")
     (projectile-project-compilation-cmd . "../build/jet.py build --Platform=Linux --Configuration=Debug --Editor=Enabled")
     (projectile-project-run-cmd . "../build/jet.py run --Platform=Linux --Configuration=Debug")
     (projectile-project-compilation-cmd . "../build/jet.py build --Platform=Linux --Configuration=Debug")
     (projectile-project-run-cmd . "./jet_build/jet.py run --Platform=Linux --Configuration=Debug")
     (projectile-project-compilation-cmd . "./jet_build/jet.py build --Platform=Linux --Configuration=Debug")
     (projectile-project-run-cmd . "./jet_build/jet.py --Platform=Linux --Configuration=Debug && mkdir -p jet_project/cmake/build && pushd jet_project/cmake/build && cmake .. && make && ./jet_pacman && popd")
     (projectile-project-compilation-cmd . "./jet_build/jet.py --Platform=Linux --Configuration=Debug && mkdir -p jet_project/cmake/build && pushd jet_project/cmake/build && cmake .. && make && ./jet_pacman && popd")
     (projectile-project-compilation-cmd . "./jet_build/jet.py --Platform=Linux --Configuration=Debug && mkdir -p jet_project/cmake/build && pushd jet_project/cmake/build && cmake .. && make && popd")
     (projectile-project-compilation-cmd . "./jet_build/jet.py --Platform=Linux --Configuration=Debug && mkdir jet_project/cmake/build && pushd jet_project/cmake/build && cmake .. && make && popd")
     (projectile-project-run-cmd . "cmake -Hbuild -B build && cmake --build build --target vxl_tool --config Debug -- -j4 && ./build/Debug/vxl_tool/vxl_tool")
     (projectile-project-compilation-cmd . "cmake -Hbuild -B build && cmake --build build --target vxl_tool --config Debug -- -j4")
     (projectile-project-run-cmd . "cmake -Hbuild -Bbuild && cmake --build build --target vxl_tool --config Debug -- -j4 && ./build/Debug/vxl_tool/vxl_tool")
     (projectile-project-compilation-cmd . "cmake -Hbuild -Bbuild && cmake --build build --target vxl_tool --config Debug -- -j4")
     (projectile-project-run-cmd . "cmake --build build --target vxl_tool --config Debug -- -j4 && ./build/Debug/vxl_tool/vxl_tool")
     (projectile-project-compilation-cmd . "cmake --build build --target vxl_tool --config Debug -- -j4")
     (projectile-run-cmd function multi-compile-run)
     (projectile-compilation-cmd function multi-compile-run)
     (projectile-project-run-cmd function multi-compile-run)
     (projectile-project-compilation-cmd function multi-compile-run)
     (projectile-project-run-cmd . multi-compile-run)
     (projectile-project-compilation-cmd . multi-compile-run)
     (projectile-project-run-cmd quote multi-compile-run)
     (projectile-project-compilation-cmd quote multi-compile-run)
     (multi-compile-alist
      ("\\.*"
       ("cocos-compile-linux" . "cocos compile -p Linux")
       ("cocos-compile-android" . "compile-android"))
      ("\\.*"
       ("cocos-run-linux" . "cocos run -p Linux")
       ("cocos-run-android" . "run-android")))
     (multi-compile-alist
      ("\\.*"
       ("cocos-compile-linux" . "compile-linux")
       ("cocos-compile-android" . "compile-android")))
     (multi-compile-alist quote
                          (("\\.*"
                            ("cocos-compile-linux" . "compile-linux")
                            ("cocos-compile-android" . "compile-android"))))
     (make-variable-buffer-local
      (quote multi-compile-alist))
     (projectile-project-run-cmd . "pushd build && cmake .. && make && ./ncalc")
     (projectile-project-compilation-cmd . "pushd build && cmake .. && make")
     (projectile-project-run-cmd . "cocos compile -p Linux && ./build/bin/MyGame")
     (projectile-project-run-cmd . "pushd build; make -j4; pushd project; ./thieves; popd; popd")
     (projectile-project-run-cmd . "pushd build; make -j4; ./project/thieves; popd")
     (projectile-project-compilation-cmd . "pushd build; make -j4; popd")
     (projectile-project-run-cmd . "echo \"Wat?\"")
     (projectile-project-compilation-cmd . "pushd build; make; popd")
     (projectile-project-test-cmd function
                                  (gud-gdb "build/bot"))
     (projectile-project-test-cmd quote
                                  (gud-gdb "build/bot"))
     (projectile-project-run-cmd . "./compile.sh; ./run_simulation.sh")
     (projectile-project-run-cmd . "compile.sh; ./run_simulation.sh")
     (projectile-project-compilation-cmd . "./compile.sh")
     (projectile-project-run-cmd . "./run_simulation.sh")
     (projectile-project-run-cmd . "cd ./../local-runner; ./local-runner.sh; cd ./../bot; ./build/bot")
     (projectile-project-run-cmd . "./../local-runner/local-runner.sh; ./build/bot")
     (projectile-project-run-cmd . "../local-runner/local-runner.sh; ./build/bot")
     (projectile-project-run-cmd . "./build/bot")
     (projectile-project-compilation-cmd . "cd build; cmake ..; make")
     (projectile-project-compilation-cmd . "cd build/; cmake ..; make")
     (projectile-project-run-cmd . "./build/test_app")
     (projectile-project-compilation-cmd . "cd build/; cmake ..")
     (eval setq flycheck-erlang-library-path
           (file-expand-wildcards "../_build/default/lib/*/ebin"))
     (flycheck-erlang-library-path list
                                   (file-expand-wildcards "../_build/default/lib/*/ebin"))
     (flycheck-erlang-library-path file-expand-wildcards "../_build/default/lib/*/ebin")
     (flycheck-erlang-library-path quote
                                   ("../_build/default/lib/*/ebin"))
     (flycheck-erlang-include-path quote
                                   ("../include/"))
     (flycheck-erlang-library-path
      (quote
       ("../_build/default/lib/*/ebin")))
     (flycheck-erlang-include-path
      (quote
       ("../include/")))
     (org-agenda-files list "main.org" "inbox.org")
     (org-agenda-files list
                       (quote "main.org")
                       (quote "inbox.org"))
     (org-tag-alist quote nil)
     (org-startup-folded quote overview)
     (org-agenda-files quote
                       ("main.org" "inbox.org"))
     (org-agenda-files ".")
     (org-agenda-files list "main.org")
     (org-agenda-files
      (list "main.org"))
     (projectile-project-run-cmd . "cocos run -p Linux")
     (projectile-project-compilation-cmd . "cocos compile -p Linux")
     (projectile-project-compilation-cmd "cocos compile -p Linux")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-face ((t (:inherit nil :underline (:color "#8abeb7" :style wave)))))
 '(persp-selected-face ((t (:foreground "#ff99ff" :weight bold)))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
