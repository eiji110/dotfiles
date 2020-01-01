; ----
; language
; ----
;; set language as Japanese
(set-language-environment 'Japanese)
;; coding UTF8
(set-language-environment  'utf-8)
(prefer-coding-system 'utf-8)

; ----------------
; key bind
; ----------------
;;; C-h "ctrl+h"で左の文字の消去
;(global-set-key "\C-h" 'delete-backward-char)
;;; help "ctrl+c ctrl+h"でヘルプの表示
;(global-set-key "\C-c\C-h" 'help-command)
;;; comment out "ctrl+c ;"で行のコメントアウト
;(global-set-key "\C-c;" 'comment-dwim)
;;; window operation "ctrl+t"でタブの切り替え
;(global-set-key "\C-t" 'other-window)

; ----
; preferences
; ----
;; welcome画面の表示を消す
(setq initial-scratch-message t)

;; 画面の下のバーで、今どこの行、列にいるかを表示させる
(line-number-mode t)
(column-number-mode t)

;; yesとnoをyとnで打てるようにする
(defalias 'yes-or-no-p 'u-or-n-p)

;; 行番号を常に左端に表示させる
;;(global-linum-mode t)

;; 現在いる行を目立たせる
(global-hl-line-mode)

;; 対応する括弧のハイライト(マクロを書いている時など、対応括弧が分からなくなりがちなので便利)
(show-paren-mode t)
;; 画面内に対応する括弧がある場合は括弧だけを、ない場合は括弧で囲まれた部分をハイライト
(setq show-paren-style 'mixed)
;; 対応する括弧だけをハイライト
;(setq show-paren-style 'parenthesis)
;; 括弧で囲まれた部分をハイライト
;(setq show-paren-style 'expression)

; ----
; Org mode
; ----
; ファイルの場所
;http://www.mhatta.org/wp/2018/08/16/org-mode-101-1/
(setq org-directory "~/memo/Org")
(setq org-default-notes-file "notes.org")
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;(setq org-capture-templates
;      '(("t" "Todo" entry (file+headline "~/memo/gtd.org" "Tasks")
;     "* TODO %?\n  %i\n  %a")
;        ("j" "Journal" entry (file+datetree "~/memo/journal.org")
;     "* %?\nEntered on %U\n  %i\n  %a")))
;; Org-captureを呼び出すキーシーケンス
;(define-key global-map "\C-cc" 'org-capture)
;; Org-captureのテンプレート（メニュー）の設定
;(setq org-capture-templates
;    '(("n" "Note" entry (file+headline "~/ownCloud/Org/notes.org" "Notes")
;        "* %?\nEntered on %U\n %i\n %a")
;    ))
; メモをC-M-^一発で見るための設定
; https://qiita.com/takaxp/items/0b717ad1d0488b74429d から拝借
(defun show-org-buffer (file)
  "Show an org-file FILE on the current buffer."
  (interactive)
  (if (get-buffer file)
      (let ((buffer (get-buffer file)))
        (switch-to-buffer buffer)
        (message "%s" file))
    (find-file (concat "~/ownCloud/Org/" file))))
(global-set-key (kbd "C-M-^") '(lambda () (interactive)
                                 (show-org-buffer "notes.org")))

;; org-captureで2種類のメモを扱うようにする
(setq org-capture-templates
      '(("t" "New TODO" entry
         (file+headline "~/memo/todo.org" "予定")
         "* TODO %?\n\n")
        ("m" "Memo" entry
         (file+headline "~/memo/memo.org" "メモ")
         "* %U%?\n%i\n%a")))
;; org-agendaでaを押したら予定表とTODOリストを表示
(setq org-agenda-custom-commands
      '(("a" "Agenda and TODO"
         ((agenda "")
          (alltodo "")))))
;; org-agendaで扱うファイルは複数可だが、
;; TODO・予定用のファイルのみ指定
(setq org-agenda-files '("~/memo/todo.org"))
;; TODOリストに日付つきTODOを表示しない
(setq org-agenda-todo-ignore-with-date t)
;; 今日から予定を表示させる
(setq org-agenda-start-on-weekday nil)

