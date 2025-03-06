;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
(setq doom-theme 'catppuccin)
;; (setq catppuccin-flavor 'macchiato) ; or 'frappe 'latte, 'macchiato, or 'mocha
;; (load-theme 'catppuccin t)

(setq doom-font (font-spec :family "Intel One Mono" :size 32))
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq org-directory "~/org/")
(setq org-directory "~/Documents/org")

(after! org
  (setq org-agenda-files '("~/Documents/org/daily/"
                           "~/Documents/org/planning/tasks/upcomming-tasks.org")))

;; (setq scroll-margin 7)

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(use-package!  org-super-agenda
  :after org-genda
  :init
  (setq org-super-agenda-groups `((:name "Today"
                                   :time-grid t
                                   :scheduled today)
                                  (:name "Due today"
                                   :deadline today)
                                  (:name "Important"
                                   :priority "A")
                                  (:name "Overdue"
                                   :deadline past)
                                  (:name "Due soon"
                                   :tag "bd")))
  :config
  (org-super-agenda-mode))

(after! persp-mode
  (setq persp-emacsclient-init-frame-behaviour-override
        `(+workspace-current-name))
  )

(setq
 projectile-project-search-path `("~/Documents/"))

;; (use-package yasnippet
;;   :config
;;   (setq yas-snippet-dirs`("~/.dotfiles/doom/.config/doom/snippets/"))
;;   (yas-global-mode 1))


;; coustom key binds
(map! :map 'override "C-c C-o" #'toggle-input-method)
;; (map! :map 'override "TAB" #'yas-expand)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; indent go code with 2 wide tabs
;; (add-hook 'go-mode-hook
;;           (lambda ()
;;             (add-hook 'before-save-hook 'gofmt-before-save)
;;             (setq-default)
;;             (setq tab-width 2)
;;             (setq standard-indent 2)
;;             (setq indent-tabs-mode nil)))
(setq org-hide-emphasis-markers t)

;; org-roam config
(setq org-roam-directory "~/Documents/org/")
(setq org-roam-capture-templates
      '(("d" "default" plain
         "%?"
         :if-new (file+head "~/Documents/org/notes/new/${slug}.org" "#+title: ${title}\n")
         :unnarrowed t)
        ("v" "japanese vocab" plain (file "~/.dotfiles/doom/.config/doom/templates/japaneses-vocab.org")
         :if-new (file+head "~/Documents/org/notes/japaneses/vocab/${slug}.org" "#+title: ${title}\n")
         :unnarrowed t)
        ))

;; emms config
(emms-all)
(setq emms-player-list '(emms-player-mpv)
      emms-player-mpv-parameters '("--no-video")
      emms-info-functions '(emms-info-native))
(setq-default
 emms-source-file-default-directory "~/Music/"
 )

(defun track-title-from-file-name (file)
  "For using with EMMS description functions. Extracts the track
title from the file name FILE, which just means a) taking only
the file component at the end of the path, and b) removing any
file extension."
  (with-temp-buffer
    (save-excursion (insert (file-name-nondirectory (directory-file-name file))))
    (ignore-error 'search-failed
      (search-forward-regexp (rx "." (+ alnum) eol))
      (delete-region (match-beginning 0) (match-end 0)))
    (buffer-string)))

(defun my-emms-track-description (track)
  "Return a description of TRACK, for EMMS, but try to cut just
the track name from the file name, and just use the file name too
rather than the whole path."
  (let ((artist (emms-track-get track 'info-artist))
        (title (emms-track-get track 'info-title)))
    (cond ((and artist title)
           ;; Converting the artist/title to a string works around a bug in `emms-info-exiftool'
           ;; where, if your track name is a number, e.g. "1999" by Jeroen Tel, then it will be an
           ;; integer type here, confusing everything.
           ;;
           ;; I would fix the bug properly and submit a patch but I just cannot be bothered to
           ;; figure out how to do that.
           (concat (format "%s" artist) " - " (format "%s" title)))
          (title title)
          ((eq (emms-track-type track) 'file)
           (track-title-from-file-name (emms-track-name track)))
          (t (emms-track-simple-description track)))))

(setq emms-track-description-function 'my-emms-track-description)

;; emms key binds
(map! :leader
      (:prefix-map ("e" . "emms")
       :desc "pause play" "p" #'emms-pause
       :desc "play file" "f" #'emms-play-file
       :desc "play dir tree" "d" #'emms-play-directory-tree
       :desc "play dir" "D" #'emms-play-directory
       :desc "next" "n" #'emms-next
       :desc "prev" "b" #'emms-previous
       :desc "shuffel" "S" #'emms-shuffle
       :desc "skip forward 10s" "s" #'emms-seek-forward
       :desc "stop emms" "q" #'emms-stop
       )
      )

(use-package dired-hide-dotfiles
  :hook (dired-mode , dired-hide-details-mode)
  :config
  (evil-collection-define-key 'normal 'dired-mode-map
    "H" 'dired-hide-dotfiles-mode))

(add-hook 'dired-mode-hook
          (lambda ()
            (dired-hide-details-mode)
            (dired-sort-toggle-or-edit)))

;; shell set up
(setq shell-file-name (executable-find
                       "bash"))
(setq-default vterm-shell "/bin/nu")

;; (setq-default explicit-shell-file-name "/bin/zsh")
;; (setq lsp-copilot-enabled f)
(setq! lsp-copilot-enabled 'f)

(set-frame-parameter nil 'alpha-background 85)
(add-to-list 'default-frame-alist '(alpha-background . 85))

(setq projectile-indexing-method 'native)

;; set go indentation
(setq-default go-basic-offset 2
              tab-width 2
              indent-tabs-mode t)


(use-package odin-mode)
