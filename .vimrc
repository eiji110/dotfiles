"----------------------------------------------------
" 基本的な設定
"
"" tiny な vim対策
if !1 | finish | endif
"" viとの互換性をとらない(vimの独自拡張機能を使う為)
set nocompatible
" ビープ音を鳴らさない
set vb t_vb=
"NeoBundle ------------------------------------------
filetype off
if has('vim_starting')
  set runtimepath +=$HOME/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
" 使いたいプラグインのリポジトリ
NeoBundle 'mattn/webapi-vim'
NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/sudo.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/vcscommand.vim'
NeoBundle 'Align'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'sgur/vim-editorconfig'
NeoBundle 'fuenor/qfixgrep'
NeoBundle 'fuenor/qfixhowm'

NeoBundle 'evidens/vim-twig'

call neobundle#end()

 " :NeoBundleList          - list configured bundles
 " :NeoBundleInstall(!)    - install(update) bundles
 " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
filetype plugin indent on

NeoBundleCheck

" qfixhowm----------------------------------------------------------
" " howm_dirはファイルを保存したいディレクトリを設定
" キーマップリーダー
let QFixHowm_Key = 'g'

" howm_dirはファイルを保存したいディレクトリを設定
let howm_dir             = '~/memo/'
"予定・TODOの検索場所指定
let QFixHowm_ScheduleSearchDir = howm_dir.'/.todos'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.md'
" ファイルタイプをmarkdownにする
let QFixHowm_FileType = 'markdown'
" タイトル記号
let QFixHowm_Title = '#'
" タイトル行検索正規表現の辞書を初期化
let QFixMRU_Title = {}
" MRUでタイトル行とみなす正規表現(Vimの正規表現で指定)
let QFixMRU_Title['mkd'] = '^###[^#]'
" grepでタイトル行とみなす正規表現(使用するgrepによっては変更する必要があります)
let QFixMRU_Title['mkd_regxp'] = '^###[^#]'

",yでの予定表示期間
let QFixHowm_ShowSchedule     = 31
"",tでの予定表示期間
let QFixHowm_ShowScheduleTodo = 10
",,での予定表示期間
let QFixHowm_ShowScheduleMenu = 31
"
"",y で表示される予定・TODOパターン
let QFixHowm_ListReminder_ScheExt = '[@!.]'
",t で表示される予定・TODOパターン
let QFixHowm_ListReminder_TodoExt = '[-@+!~.]'
"",, で表示される予定・TODOパターン
let QFixHowm_ListReminder_MenuExt = '[-@+!~.]'
"予定
let QFixHowm_ReminderDefault_Schedule = 0
"締め切り
let QFixHowm_ReminderDefault_Deadline = 30
"TODO
let QFixHowm_ReminderDefault_Todo     = 30
"リマインダ
let QFixHowm_ReminderDefault_Reminder = 1
"浮沈TODO
let QFixHowm_ReminderDefault_UD       = 30

" その他プラグイン----------------------------------------------------------
source $VIMRUNTIME/macros/matchit.vim
"-init----------------------------------------------------------------------
"leaderをスペースに変更
"let mapleader=" "
"---------------------------------------------------------------------------
" 検索の挙動に関する設定:

" インクリメンタル検索
set incsearch
" 検索にマッチしたすべてのテキストをハイライト
set hlsearch
" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" コマンド、検索パターンを100個まで履歴に残す
set history=100
"---------------------------------------------------------------------------
" 編集に関する設定:
"
" 改行コードの自動認識
set fileformats=unix,dos,mac
" バックスペースでインデントや改行を削除できるようにする
set backspace=2
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set noshowmatch
" 対応する括弧の表示時間
set matchtime=0
" MatchParenプラグインを読み込まない対応する括弧にジャンプ表示
let loaded_matchparen = 1
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" 入力されているテキストの最大幅
" (行がそれより長くなると、この幅を超えないように空白の後で改行される)を無効にする
set textwidth=0
" 自動改行を無効にする
set formatoptions=q
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
"---------------------------------------------------------------------------
" インデント

" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" タブが対応する空白の数
set tabstop=4
" タブやバックスペースの使用等の編集操作をするときに、タブが対応する空白の数(0の場合「tabstop」で指定されている数値が使用される)
set softtabstop=0
" インデントの各段階に使われる空白の数
set shiftwidth=4
" タブをスペースに展開しない (expandtab:展開する)
"set noexpandtab
set expandtab
set shiftround

" GUI固有ではない画面表示の設定---------------------------------------------
"
" 行番号を表示
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (list:表示)
set list
" どの文字でタブや改行を表示するかを設定
set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title
" ステータスラインを常に表示
set laststatus=2
" タブページを常に表示
set showtabline=2
" シンタックスハイライトを有効にする
syntax on
" ウィンドウサイズ自動調整しない
set noequalalways
" ウィンドウの幅より長い行は折り返して、次の行に続けて表示する
set wrap
colorscheme desert
" ステータスラインに表示する情報の指定
set statusline=%2*%y\%n%*\%<%{winnr('$')>1?winnr().'/'.winnr('$').'\':''}%2*%f%1*%(\[%M%R%H%W]\%)%*%=\|%c/%P\|%{GetEFstatus()}%{fugitive#statusline()}

function! GetEFstatus()
  let str = ''
  let ff = &fileformat
  let fenc = &fileencoding
  if ff == 'unix'
    let str = 'U'
elseif ff == 'dos'
    let str = 'D'
elseif ff == 'mac'
	let str = 'M'
  endif
  unlet ff
	if fenc == ''
		let fenc = &encoding
	endif
    
	if fenc =~# 'iso-2022-jp'
      let fenc = 'J'
    elseif fenc == 'utf-8'
      let fenc = 'U8'
    elseif fenc == 'cp932'
      let fenc = 'S'
    elseif fenc == 'euc-jp'
      let fenc = 'E'
    else
      let fenc = &fileencoding
    endif
    let str = str . '|' . fenc
  unlet fenc
  return str
endfunction
" フォント設定
if has('unix')
	set guifont=Inconsolata¥11
endif
" CUI固有の画面表示の設定---------------------------------------------
" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

:highlight User1 term=inverse,bold cterm=inverse,bold ctermfg=red
:highlight User2 term=inverse,bold cterm=inverse,bold ctermfg=black

" key一覧
"   key           意味         
" term    白黒端末での属性     
" cterm   カラー端末での属性   
" ctermfg カラー端末での文字色 
" ctermbg カラー端末での背景色 
" gui     GUI での属性         
" font    GUI でのフォント     
" guifg   GUI での文字色       
" guibg   GUI での背景色       
" guisp   GUI での波線色       
" 
" 属性一覧
"       属性                           効果                    
" bold              太文字(ctermでは明るくなる)                
" underline         下線                                       
" undercurl         下波線(guiのみ, [c]termではunderlineに(?)) 
" reverse(=inverse) 文字色と背景色を反転                       
" italic            イタリック                                 
" standout          reverse+bold(?)                            
" NONE              使用しない(リセット)                       
"---------------------------------------------------------------------------
" ファイル操作に関する設定
"
" スワップファイルを作成しない
set noswapfile
" スワップファイル用のディレクトリ
" set directory=$HOME/vimbackup
" バックアップファイルを作成しない
set nobackup
" undo情報ファイルを作成しない
if has('persistent_undo')
    set noundofile
endif
" ファイル名に大文字小文字の区別がないシステム用の設定:
"   (例: DOS/Windows/MacOS)
"
if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tagsファイルの重複防止
  set tags=./tags,tags
endif

"---------------------------------------------------------------------------
"クリップボードに関する設定:
"
"クリップボードをWindowsと連携
"set clipboard=unnamed

"---------------------------------------------------------------------------
"自動折りたたみ設定
set foldmethod=indent
set foldlevel=99
set foldcolumn=0
set nofoldenable
"---------------------------------------------------------------------------
" プラットホーム依存の特別な設定

" WinではPATHに$VIMが含まれていないときにexeを見つけ出せないので修正
if (has('win32') || has('win64')) && $PATH !~? '¥(^¥|;¥)' . escape($VIM, '¥¥') . '¥(;¥|$¥)'
  let $PATH = $VIM . ';' . $PATH
elseif has('mac')
  " Macではデフォルトの'iskeyword'がcp932に対応しきれていないので修正
  set iskeyword=@,48-57,_,128-167,224-235
elseif has('unix')
"linuxではエンコードをUTF8に。
	:set encoding=utf-8
":set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
endif

""" netrw----------------------------------------------------------------------
let g:netrw_mousemaps =0  "マウスのマップを無効にする
""" PHP----------------------------------------------------------------------
"PHP
"let php_sql_query=1 "文字列中のSQLをハイライトする
"let php_htmlInString=1 "文字列中のHTMLをハイライトする
"let php_noShortTags=1 "ショートタグ(<?を無効にする→ハイライト除外にする)
"let php_folding=1 "クラスと関数の折りたたみを有効にする
set matchpairs=(:),{:},[:],<:>
"let b:match_words = '<:>,<div.*>:</div>'
"let b:match_words = 'if:endif,foreach:endforeach,¥<begin¥>:¥<end¥>'
"let b:match_ignorecase = 1

""" 補完---------------------------------------------------------------------
set omnifunc=syntaxcomplete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCss
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php5 setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

""" 辞書---------------------------------------------------------------------
autocmd FileType php :setlocal dictionary=~/.vim/dict/php.dict
""" ヘルプ-------------------------------------------------------------------
set helplang=ja,en

""" その他設定---------------------------------------------------------------
" バッファを切替えてもundoの効力を失わない
set hidden
" 起動時のメッセージを表示しない
set shortmess+=I

"-------------------------------------------------------------------------------
" Mapping <jump-tag>
"-------------------------------------------------------------------------------
" コマンド       ノーマルモード 挿入モード コマンドラインモード ビジュアルモード
" map/noremap           @            -              -                  @ 
" nmap/nnoremap         @            -              -                  -
" imap/inoremap         -            @              -                  - 
" cmap/cnoremap         -            -              @                  -  
" vmap/vnoremap         -            -              -                  @
" map!/noremap!         -            @              @                  -
"
" noremapは素のvimが持っている機能に割り当てるので基本noremapを使い、
" プラグインなど後付けの機能に割り当てる場合はmapを使う。

"キーマップ ------------------------------------------------------------------------------
"コマンドラインでbash的なキーバインド
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
" 新規タブで.vimrcを開く
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
"
" omni補完
imap <C-Space> <C-x><C-o>

" netrw
noremap <Space>f :<C-u>Explore<CR>

" syntastic
noremap <Space>c :<C-u>SyntasticCheck<CR>

" quickrun
noremap <Space>q :<C-u>tabnew<CR>:setfiletype bash<CR>

" outline
autocmd FileType qf nnoremap <silent><buffer> <Space>o <CR>:<C-u>cclose<CR>

autocmd FileType php noremap <silent><buffer> <Space>o :<C-u>vimgrep /function/ % \| cw<CR><C-w>b
autocmd FileType ruby noremap <silent><buffer> <Space>o :<C-u>vimgrep /\(def\\|task\\|namespace\)/ % \| cw<CR><C-w>b
autocmd FileType javascript noremap <silent><buffer> <Space>o :<C-u>vimgrep /^\s*function/ % \| cw<CR><C-w>b
autocmd FileType sql noremap <silent><buffer> <Space>o :<C-u>vimgrep /\(\/\*\\|--\)/ % \| cw<CR><C-w>b
autocmd FileType markdown call s:eu_outline_setting_markdown()

function! s:eu_outline_setting_markdown()
    noremap <silent><buffer> <Space>o :<C-u>vimgrep /^#/ % \| cw<CR><C-w>b
endfunction

" todo&done
"
function! EuTodoToggleCheckbox()
    let l:line = getline('.')
    if l:line =~ '^\s*\[.+\]!\s'
        let l:result = substitute(l:line, ']!\s', ']. ', '')
        call setline('.', l:result)
    elseif l:line =~ '^\s*\[.+\]\.\s'
        let l:result = substitute(l:line, ']\.\s', ']! ', '')
        call setline('.', l:result)
    else
        let l:result = substitute(l:line, '^', '[' . strftime("%Y-%m-%d") . ']! ', '')
        call setline('.', l:result)
    end
endfunction
function! EuTodoToggleLimitTime()
    let l:line = getline('.')
    if l:line =~ '^\s*[*+-]\s\[\s\]\s(*\d\{4}.\+)'
        let l:result = substitute(l:line, '\s(\d\{4}.\+)', '', '')
        call setline('.', l:result)
    elseif l:line =~ '^\s*[*+-]\s\[\s\]'
        " 今日を期限にする
        let l:result = substitute(l:line, '[*+-]\s\[ \]', '- [ ] (' . strftime("%Y/%m/%d") . ')', '')
        call setline('.', l:result)
    end
endfunction
function! EuTodoAgenda()
    " execute 'vimgrep' '/\s*[*+-]\s\[\s\]\s(\d\{4}.\+)/' '%'
    execute 'vimgrep' '/\s*[*+-]\s\[\s\]\s(\d\{4}.\+)/' '%'
    call setqflist(sort(getqflist(), 's:EuTodoAgendaSort'))
    execute 'cw'
endfunction
function! s:EuTodoAgendaSort(e1, e2)
endfunction
autocmd FileType markdown noremap <silent><buffer> <Space>td :call EuTodoToggleCheckbox()<CR>
autocmd FileType markdown noremap <silent><buffer> <Space>tl :call EuTodoToggleLimitTime()<CR>
" autocmd FileType markdown noremap <silent><buffer> <Space>ta :<C-u>vimgrep /\s*[*+-]\s\[\s\]\s(\d\{4}.\+)/ % \| cw<CR><C-w>b
autocmd FileType markdown noremap <silent><buffer> <Space>ta :call EuTodoAgenda()<CR><C-w>b
autocmd FileType markdown noremap <silent><buffer> <Space>ts :<C-u>sort /\s*[*+-]\s\[x\]\s/<CR>
"autocmd FileType markdown noremap <silent><buffer> <Space>ts :<C-u>sort! /\s*[*+-]\s\[\s\]\s(\d\{4}.\+)/ r<CR>:sort /\s*[*+-]\s\[x\]\s/<CR>

" date 入力
noremap <Space>id <ESC>a<C-R>=strftime("%Y/%m/%d (%a)")<ESC><ESC>
" time 入力
noremap <Space>it <ESC>a<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<ESC><ESC>

" feed reader
"
let g:eu_feed_reader_feedfilelist_path = ['rubocop']
function! EuFeedReaderShowFeed()
let result = webapi#feed#parseURL("http://d.hatena.ne.jp/osyo-manga/rss")
for item in result
        echo item.title
    endfor
endfunction
noremap <Space>rf :<C-u>call EuFeedReaderShowFeed()<CR>


" Plugin

"""--------------------------------------------------------------------------
""" その他プラグイン
"""--------------------------------------------------------------------------

""" syntastic-----------------------------------------------------------------------------
let g:syntastic_mode_map = { 'mode': 'active',
\ 'active_filetypes': [],
\ 'passive_filetypes': ['html','php','ruby','javascript'] }
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checker = 'jshint'
let g:syntastic_java_checker = "javac"
let g:syntastic_php_checkers = ['phpcs']
let g:syntastic_php_phpcs_args = '--standard=psr2'
let g:syntastic_ruby_checkers = ['rubocop']
if filereadable(expand('~/.composer/vendor/bin/twig-lint'))
  "" composer global require "asm89/twig-lint" "@stable"
    let g:syntastic_twig_twiglint_exec = '~/.composer/vendor/bin/twig-lint'
    let g:syntastic_twig_twiglint_exe = '~/.composer/vendor/bin/twig-lint'
endif

noremap <Space>c :<C-u>SyntasticCheck<CR>
""jshint
"npm install -g jshint

""rubocop
"gem install rubocop
"use bundler in Gemfile
"gem 'rubocop', require: false

"php_codesniffer
"composer global require "squizlabs/php_codesniffer=*"

""" webapi-----------------------------------------------------------------------------

" 環境依存や非公開設定ファイルの読み込み
if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

