;;; ficdown-mode.el --- major mode for editing ficdown files. -*- coding: utf-8; lexical-binding: t; mode: markdown-mode -*-
;; Copyright © 2017, by Christopher R. Brown

;; Author: Christopher R. Brown ( mrlordvondoombraun@gmail.com )
;; Version: 0.0.1
;; Created: 23 AUG 2017
;; Keywords: major-mode, ficdown, markdown, interactive fiction, adventure text
;; Homepage: teamawesome3.dlinkddns.com

;;; License:

;;  This file is not part of GNU Emacs. This program is free software-
;;  you can redistribute it and/or modify
;;  it under the terms of the GNU General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.

;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU General Public License for more details.

;;  You should have received a copy of the GNU General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;  This is a major-mode derived for writing ficdown documents.

;;; Code:

(require 'easymenu)

(defvar ficdown-modehook nil
  "Hook to be run upon engaging ficdown-mode.")

(defvar ficdown-font-lock-keywords nil
  "set variable for font-lock-defaults")


;;;###autoload
 (define-derived-mode ficdown-mode markdown-mode "Ficdown"
   "A major mode for editing Ficdown files."
   :syntax-table ficdown-mode-syntax-table
   (setq-local font-lock-defaults
	'(ficdown-font-lock-keywords))
   (setq-local imenu-generic-expression
	ficdown-imenu-generic-expression)
   (setq-local outline-regexp ficdown-outline-regexp))

(provide ficdown-mode)
;;; ficdown-mode ends here
