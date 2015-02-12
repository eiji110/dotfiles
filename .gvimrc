"---------------------------------------------------------------------------
" カラー設定:
colorscheme desert
"背景透明度
" gui
" set transparency=230
" ツールバー非表示
set guioptions-=T
" メニューバー非表示
set guioptions-=m
" 右スクロールバー非表示
set guioptions-=r
set guioptions-=R
" 左スクロールバー非表示
set guioptions-=l
set guioptions-=L
" gVimでもテキストベースのタブページを使う
set guioptions-=e
" statusline用---------------------
" 全角スペースの表示
highlight ZenkakuSpace guibg=darkgray
match ZenkakuSpace /　/

" desertの設定↓
" hi StatusLine	guibg=#c2bfa5 guifg=black gui=none
" hi StatusLineNC	guibg=#c2bfa5 guifg=grey50 gui=none
:highlight User1 gui=bold guifg=red guibg=#c2bfa5
:highlight User2 gui=bold guifg=black guibg=#c2bfa5
