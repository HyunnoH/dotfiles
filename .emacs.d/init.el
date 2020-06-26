(package-initialize)

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-refresh-contents)
(require 'doom-themes)

(setq doom-themes-enable-bold t
      doom-themes-enable-italic t
      doom-one-brighter-modeline nil
      doom-one-brighter-comments nil)

(load-theme 'doom-one t)

(require 'ivy) (ivy-mode 1)
(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(global-evil-leader-mode t)
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "f" 'find-file)

(require 'counsel)
(require 'swiper)
(setq ivy-wrap t
      ivy-re-builders-alist '((t . ivy--regex-fuzzy))
      ivy-use-selectable-prompt t)

(define-key ivy-switch-buffer-map (kbd "C-j") 'ivy-next-line)
(define-key ivy-switch-buffer-map (kbd "C-k") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "C-j") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "C-k") 'ivy-previous-line)
(global-set-key (kbd "M-x") 'counsel-M-x)

(define-key evil-normal-state-map (kbd "C-s") 'swiper)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(package-selected-packages
   (quote
    (treemacs-evil evil-magit tide magit company-lsp company-anaconda company-ebdb xah-elisp-mode ## symex counsel ivy evil-leader))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'smex)
(smex-initialize)

(require 'undo-tree)
(global-undo-tree-mode t)
(evil-leader/set-key
  "u" 'undo-tree-visualize)

(require 'lsp-mode)
(require 'lsp-clients)
(setq lsp-prefer-flymake nil)
(add-hook 'prog-mode-hook 'lsp-deferred)
(evil-leader/set-key
  "l" 'lsp-command-map)
(require 'company)
(add-hook 'prog-mode-hook 'company-mode)
(setq company-backends '((company-dabbrev-code :seperate company-capf company-keywords)
			 company-files
			 company-keywords
			 company-capf
			 company-yasnippet
			 company-abbrev
			 company-dabbrev))
(define-key company-active-map (kbd "TAB") 'company-complete)

(require 'company-lsp)
(add-to-list 'company-backends 'company-lsp)
(require 'flycheck)
(add-hook 'prog-mode-hook 'flycheck-mode)
(require 'magit)
(evil-leader/set-key
  "m" 'magit-status)
(require 'evil-magit)
(evil-magit-init)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

