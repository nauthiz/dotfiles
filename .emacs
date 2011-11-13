;;; 現在行に色をつける
(global-hl-line-mode 1)
;;; 色
(set-face-background 'hl-line "darkolivegreen")

;;; 履歴を次回Emacs起動時にも保存する
(savehist-mode 1)

;;; ファイル内のカーソル位置を記録する
(setq-default save-place t)

(require 'saveplace)

;;; 対応する格好を表示させる
(show-paren-mode 1)

;;; シェルに合わせるため、C-hは抗体に割り当てる
(global-set-key (kbd "C-h") 'delete-backward-char)

;;; モードラインに時刻を表示する
(display-time)

;;; 行番号・桁番号を表示
(line-number-mode 1)
(column-number-mode 1)

;;; リージョンに色をつける
(transient-mark-mode 1)

;;; GCを減らして軽くする (デフォルトの10倍)
;;; 現在のマシンパワーではもっと大きくしてもよい
(setq gc-cons-threshold (* 10 gc-cons-threshold))

;;; ログの記録行数を増やす
(setq message-log-max 10000)

;;; ミニバッファを再帰的に呼び出せるようにする
(setq enable-recursive-minibuffers t)

;;; ダイアログボックスを使わないようにする
(setq use-dialog-boxn nil)
(defalias 'message-box 'message)

;;; 履歴をたくさん保存する
(setq history-length 1000)

;;; キーストロークをエコーエリアに早く表示する
(setq echo-keystrokes 0.1)

;;; 大きいファイルを開こうとしたときに警告を発生させる
;;; デフォルトは10MBなので25MBに拡張する
(setq large-file-warning-threshold (* 25 1024 1024))

;;; ミニバッファで入力を取り消しても履歴に残す
;;; 誤って取り消して入力が失われるのを防ぐため
(defadvice abort-recursive-edit (before minibuffer-save activate)
  (when (eq (selected-window) (active-minibuffer-window))
    (add-to-history minibuffer-history-variable (minibuffer-contents))))

;;; yesと入力するのは面倒なのでyで十分
(defalias 'yes-or-no-p 'y-or-n-p)

;;; バックアップファイルを作成しない
(setq backup-inhibited t)

(add-to-list 'load-path "~/.emacs.d/auto-install")

(require 'auto-install)

;;; 起動時にEmacsWikiのページ名を補完候補に加える
(auto-install-update-emacswiki-package-name t)

;;; install-elisp.el互換モードにする
(auto-install-compatibility-setup)

;;; ediff関連のバッファを1つのフレームにまとめる
;(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;;; redo+
(require 'redo+)
(global-set-key (kbd "C-M-_") 'redo)
;; 過去のアンドゥをリドゥされないようにする
(setq undo-no-redo t)
;; 大量のアンドゥに耐えられるようにする
(setq undo-limit 600000)
(setq undo-strong-limit 900000)

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/plugin/yasnippet-0.6.1c")
(require 'yasnippet-config)
;(yas/setup "~/.emacs.d/plugin/yasnippet-0.6.1c")

(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugin/yasnippet-0.6.1c/snippets")

(require 'anything)

(define-key global-map (kbd "C-:") 'anything)
(define-key global-map (kbd "C-;") 'anything-resume)
(define-key global-map (kbd "C-x b") 'anything-for-files)

(define-key anything-map (kbd "C-@") 'anything-toggle-visible-mark)

(require 'descbinds-anything)
(descbinds-anything-install)

(require 'anything-complete)
(anything-lisp-complete-symbol-set-timer 150)

(define-key emacs-lisp-mode-map (kbd "C-M-i") 'anything-lisp-complete-symbol-partial-match)
(define-key lisp-interaction-mode-map (kbd "C-M-i") 'anything-lisp-complete-symbol-partial-match)

(require 'anything-grep)
(require 'anything-config)

;; C-kで行全体を削除
;(setq kill-whole-line t)

(require 'shell-pop)
(shell-pop-set-internal-mode "ansi-term")
(shell-pop-set-internal-mode-shell "/bin/bash")
(global-set-key [f8] 'shell-pop)

;; Besides, you can set the window height, the number for the percentage
;; for selected window.
(shell-pop-set-window-height 60)

(require 'auto-complete-config)
(global-auto-complete-mode 1)

; Shit+矢印でウィンドウを移動できるようにする
(windmove-default-keybindings)

; 移動先にウィンドウがない場合は、反対側へ移動する
(setq windmove-wrap-around t)

; MacでCommand+C、Vのコピー&ペーストができるように
(mac-key-mode 1)

(define-key global-map (kbd "C-S-<up>") 'windmove-up)
(define-key global-map (kbd "C-S-<down>") 'windmove-down)
(define-key global-map (kbd "C-S-<left>") 'windmove-left)
(define-key global-map (kbd "C-S-<right>") 'windmove-right)

;(blink-cursor-mode t)

(setq default-input-method "MacOSX")
;(mac-add-key-passed-to-system 'shift)

;(setq ns-command-modifier (quote meta))
;(setq ns-alternate-modifier (quote super))
