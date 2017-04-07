;;; caffe-mode.el --- Major mode for editing Caffe models and solvers  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Alexey Natalin

;; Author: Alexey Natalin <mrreggies@gmail.com>
;; Keywords: languages, tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Put this file in your load-path and the following into your init.el:
;;  (autoload 'caffe-mode "caffe-mode" "Major mode for Caffe" t)
;;  (add-to-list 'auto-mode-alist '("\\.prototxt\\'" . caffe-mode))

;;; Code:

(require 'cc-mode)

(defvar caffe-tab-width 2)

(defun caffe-indent ()
  "Indent current line as Prototxt"
  (interactive)
  (beginning-of-line)
  (if (looking-at "\\s-*}")
      (indent-line-to (* caffe-tab-width (- (car (syntax-ppss)) 1)))
    (indent-line-to (* caffe-tab-width (car (syntax-ppss)))))
  (if (looking-at "^\\s-+")
      (back-to-indentation)))

(defvar caffe-mode-syntax-table
  (let ((table (make-syntax-table)))
    (c-populate-syntax-table table)
    table))

(defvar caffe-font-lock-keywords
  '(("#.*" . font-lock-comment-face)
    ("\\(\\<\\w+\\>\\)[ \t\n]*[:]?[ \t\n]*{"
     (1 font-lock-function-name-face nil t))
    ("\\<[\\-+]*[0-9]*\\.?[0-9]+\\([eE][-+]?[0-9]+\\)?\\f?\\>" . font-lock-constant-face)
    ("\\<\\(false\\|true\\)\\>" . font-lock-constant-face)
    ("\\<\\([A-Z]\\w*\\)\\>" . font-lock-constant-face)
    ))

;;;###autoload
(defun caffe-mode ()
  "Major mode used in `caffe-mode' buffers."
  (interactive)
  (kill-all-local-variables)
  (setq major-mode 'caffe-mode)
  (setq mode-name "Caffe")

  (make-local-variable 'font-lock-defaults)
  (setq font-lock-defaults '(caffe-font-lock-keywords))

  (set-syntax-table caffe-mode-syntax-table)
  (modify-syntax-entry ?_   "w" caffe-mode-syntax-table)
  (modify-syntax-entry ?#   "<" caffe-mode-syntax-table)
  (modify-syntax-entry ?\n  ">" caffe-mode-syntax-table)

  (make-local-variable 'tab-width)
  (setq tab-width caffe-tab-width)

  (make-local-variable 'indent-tabs-mode)
  (setq indent-tabs-mode nil)

  (make-local-variable indent-line-function)
  (setq indent-line-function 'caffe-indent)

  (make-local-variable 'comment-start)
  (setq comment-start "#"))

(provide 'caffe-mode)
;;; caffe-mode.el ends here
