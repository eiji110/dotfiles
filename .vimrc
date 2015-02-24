"----------------------------------------------------
" Šî–{“I‚Èİ’è
"
"" vi‚Æ‚ÌŒİŠ·«‚ğ‚Æ‚ç‚È‚¢(vim‚Ì“Æ©Šg’£‹@”\‚ğg‚¤ˆ×)
set nocompatible
" ƒr[ƒv‰¹‚ğ–Â‚ç‚³‚È‚¢
set vb t_vb=
"NeoBundle ------------------------------------------
filetype off
if has('vim_starting')
  set runtimepath +=$HOME/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()
" g‚¢‚½‚¢ƒvƒ‰ƒOƒCƒ“‚ÌƒŠƒ|ƒWƒgƒŠ
NeoBundle 'Shougo/neobundle.vim'
"NeoBundle 'Shougo/vimproc'
"NeoBundle 'thinca/vim-ref'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'tpope/vim-surround'
"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'vim-scripts/sudo.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/vcscommand.vim'
NeoBundle 'Align'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vim-jp/vimdoc-ja'

NeoBundle 'evidens/vim-twig'

"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'h1mesuke/unite-outline'

 " :NeoBundleList          - list configured bundles
 " :NeoBundleInstall(!)    - install(update) bundles
 " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
filetype plugin indent on

if neobundle#exists_not_installed_bundles()
	echomsg 'Not installed bundles : ' .string(neobundle#get_not_installed_bundle_names())
	echomsg 'Please execute ":NeoBundleInstall" command.'
endif
" ‚»‚Ì‘¼ƒvƒ‰ƒOƒCƒ“----------------------------------------------------------
source $VIMRUNTIME/macros/matchit.vim
"-init----------------------------------------------------------------------
"leader‚ğƒXƒy[ƒX‚É•ÏX
let mapleader=" "
"---------------------------------------------------------------------------
" ŒŸõ‚Ì‹““®‚ÉŠÖ‚·‚éİ’è:

" ƒCƒ“ƒNƒŠƒƒ“ƒ^ƒ‹ŒŸõ
set incsearch
" ŒŸõ‚Éƒ}ƒbƒ`‚µ‚½‚·‚×‚Ä‚ÌƒeƒLƒXƒg‚ğƒnƒCƒ‰ƒCƒg
set hlsearch
" ŒŸõ‚É‘å•¶š¬•¶š‚ğ–³‹ (noignorecase:–³‹‚µ‚È‚¢)
set ignorecase
" ‘å•¶š¬•¶š‚Ì—¼•û‚ªŠÜ‚Ü‚ê‚Ä‚¢‚éê‡‚Í‘å•¶š¬•¶š‚ğ‹æ•Ê
set smartcase
" ŒŸõ‚Éƒtƒ@ƒCƒ‹‚ÌÅŒã‚Ü‚Ås‚Á‚½‚çÅ‰‚É–ß‚é (nowrapscan:–ß‚ç‚È‚¢)
set wrapscan
" ƒRƒ}ƒ“ƒhAŒŸõƒpƒ^[ƒ“‚ğ100ŒÂ‚Ü‚Å—š—ğ‚Éc‚·
set history=100
"---------------------------------------------------------------------------
" •ÒW‚ÉŠÖ‚·‚éİ’è:
"
" ‰üsƒR[ƒh‚Ì©“®”F¯
set fileformats=unix,dos,mac
" ƒoƒbƒNƒXƒy[ƒX‚ÅƒCƒ“ƒfƒ“ƒg‚â‰üs‚ğíœ‚Å‚«‚é‚æ‚¤‚É‚·‚é
set backspace=2
" Š‡ŒÊ“ü—Í‚É‘Î‰‚·‚éŠ‡ŒÊ‚ğ•\¦ (noshowmatch:•\¦‚µ‚È‚¢)
set showmatch
" ‘Î‰‚·‚éŠ‡ŒÊ‚Ì•\¦ŠÔ‚ğ2‚É‚·‚é
set matchtime=2
" ƒRƒ}ƒ“ƒhƒ‰ƒCƒ“•âŠ®‚·‚é‚Æ‚«‚É‹­‰»‚³‚ê‚½‚à‚Ì‚ğg‚¤(QÆ :help wildmenu)
set wildmenu
" “ü—Í‚³‚ê‚Ä‚¢‚éƒeƒLƒXƒg‚ÌÅ‘å•
" (s‚ª‚»‚ê‚æ‚è’·‚­‚È‚é‚ÆA‚±‚Ì•‚ğ’´‚¦‚È‚¢‚æ‚¤‚É‹ó”’‚ÌŒã‚Å‰üs‚³‚ê‚é)‚ğ–³Œø‚É‚·‚é
set textwidth=0
" ©“®‰üs‚ğ–³Œø‚É‚·‚é
set formatoptions=q
" ƒeƒLƒXƒg‘}“ü’†‚Ì©“®Ü‚è•Ô‚µ‚ğ“ú–{Œê‚É‘Î‰‚³‚¹‚é
set formatoptions+=mM
"---------------------------------------------------------------------------
" ƒCƒ“ƒfƒ“ƒg

" ©“®“I‚ÉƒCƒ“ƒfƒ“ƒg‚·‚é (noautoindent:ƒCƒ“ƒfƒ“ƒg‚µ‚È‚¢)
set autoindent
" ƒ^ƒu‚ª‘Î‰‚·‚é‹ó”’‚Ì”
set tabstop=4
" ƒ^ƒu‚âƒoƒbƒNƒXƒy[ƒX‚Ìg—p“™‚Ì•ÒW‘€ì‚ğ‚·‚é‚Æ‚«‚ÉAƒ^ƒu‚ª‘Î‰‚·‚é‹ó”’‚Ì”
set softtabstop=4
" ƒCƒ“ƒfƒ“ƒg‚ÌŠe’iŠK‚Ég‚í‚ê‚é‹ó”’‚Ì”
set shiftwidth=4
" ƒ^ƒu‚ğƒXƒy[ƒX‚É“WŠJ‚µ‚È‚¢ (expandtab:“WŠJ‚·‚é)
"set noexpandtab
set expandtab
set shiftround

" GUIŒÅ—L‚Å‚Í‚È‚¢‰æ–Ê•\¦‚Ìİ’è---------------------------------------------
"
" s”Ô†‚ğ•\¦
set number
" ƒ‹[ƒ‰[‚ğ•\¦ (noruler:”ñ•\¦)
set ruler
" ƒ^ƒu‚â‰üs‚ğ•\¦ (list:•\¦)
set list
" ‚Ç‚Ì•¶š‚Åƒ^ƒu‚â‰üs‚ğ•\¦‚·‚é‚©‚ğİ’è
set listchars=tab:>-,extends:<,trail:-,eol:<
" ’·‚¢s‚ğÜ‚è•Ô‚µ‚Ä•\¦ (nowrap:Ü‚è•Ô‚³‚È‚¢)
set wrap
" í‚ÉƒXƒe[ƒ^ƒXs‚ğ•\¦ (Ú×‚Í:he laststatus)
set laststatus=2
" ƒRƒ}ƒ“ƒhƒ‰ƒCƒ“‚Ì‚‚³ (Windows—pgvimg—p‚Ígvimrc‚ğ•ÒW‚·‚é‚±‚Æ)
set cmdheight=2
" ƒRƒ}ƒ“ƒh‚ğƒXƒe[ƒ^ƒXs‚É•\¦
set showcmd
" ƒ^ƒCƒgƒ‹‚ğ•\¦
set title
" ƒXƒe[ƒ^ƒXƒ‰ƒCƒ“‚ğí‚É•\¦
set laststatus=2
" ƒ^ƒuƒy[ƒW‚ğí‚É•\¦
set showtabline=2
" ƒVƒ“ƒ^ƒbƒNƒXƒnƒCƒ‰ƒCƒg‚ğ—LŒø‚É‚·‚é
syntax on
" ƒEƒBƒ“ƒhƒEƒTƒCƒY©“®’²®‚µ‚È‚¢
set noequalalways
" ƒEƒBƒ“ƒhƒE‚Ì•‚æ‚è’·‚¢s‚ÍÜ‚è•Ô‚µ‚ÄAŸ‚Ìs‚É‘±‚¯‚Ä•\¦‚·‚é
set wrap
colorscheme desert
" ƒXƒe[ƒ^ƒXƒ‰ƒCƒ“‚É•\¦‚·‚éî•ñ‚Ìw’è
set statusline=%2*%y\ %n%*\ %<%{winnr('$')>1?winnr().'/'.winnr('$').'\ ':''}%2*%f%1*%(\ [%M%R%H%W]\ %)%*%=\|%c/%P%{&dictionary==''?'':'\|DICT:'.&dictionary}\|%{GetEFstatus()}

function! GetEFstatus()
  let str = ''
  let ff = &fileformat
  let fenc = &fileencoding
  if ff == 'unix'
    let str = 'U'
elseif ff == 'dos'
    let str = 'D'
elseif ff = 'mac'
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
    elseif fenc =~# 'euc-jp'
      let fenc = 'E'
    else
      let fenc = &fileencoding
    endif
    let str = str . '|' . fenc
  unlet fenc
  return str
endfunction
" ƒtƒHƒ“ƒgİ’è
if has('unix')
	set guifont=Inconsolata\ 11
endif
" CUIŒÅ—L‚Ì‰æ–Ê•\¦‚Ìİ’è---------------------------------------------
" ‘SŠpƒXƒy[ƒX‚Ì•\¦
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /@/

:highlight User1 term=inverse,bold cterm=inverse,bold ctermfg=red
:highlight User2 term=inverse,bold cterm=inverse,bold ctermfg=black

" keyˆê——
"   key           ˆÓ–¡         
" term    ”’•’[––‚Å‚Ì‘®«     
" cterm   ƒJƒ‰[’[––‚Å‚Ì‘®«   
" ctermfg ƒJƒ‰[’[––‚Å‚Ì•¶šF 
" ctermbg ƒJƒ‰[’[––‚Å‚Ì”wŒiF 
" gui     GUI ‚Å‚Ì‘®«         
" font    GUI ‚Å‚ÌƒtƒHƒ“ƒg     
" guifg   GUI ‚Å‚Ì•¶šF       
" guibg   GUI ‚Å‚Ì”wŒiF       
" guisp   GUI ‚Å‚Ì”güF       
" 
" ‘®«ˆê——
"       ‘®«                           Œø‰Ê                    
" bold              ‘¾•¶š(cterm‚Å‚Í–¾‚é‚­‚È‚é)                
" underline         ‰ºü                                       
" undercurl         ‰º”gü(gui‚Ì‚İ, [c]term‚Å‚Íunderline‚É(?)) 
" reverse(=inverse) •¶šF‚Æ”wŒiF‚ğ”½“]                       
" italic            ƒCƒ^ƒŠƒbƒN                                 
" standout          reverse+bold(?)                            
" NONE              g—p‚µ‚È‚¢(ƒŠƒZƒbƒg)                       
"---------------------------------------------------------------------------
" ƒtƒ@ƒCƒ‹‘€ì‚ÉŠÖ‚·‚éİ’è
"
" ƒXƒƒbƒvƒtƒ@ƒCƒ‹‚ğì¬‚µ‚È‚¢
set noswapfile
" ƒXƒƒbƒvƒtƒ@ƒCƒ‹—p‚ÌƒfƒBƒŒƒNƒgƒŠ
" set directory=$HOME/vimbackup
" ƒoƒbƒNƒAƒbƒvƒtƒ@ƒCƒ‹‚ğì¬‚µ‚È‚¢
set nobackup
" undoî•ñƒtƒ@ƒCƒ‹‚ğì¬‚µ‚È‚¢
set noundofile
if exists('g:loaded_pluginname') || (v:version < 700)
    finish
endif
" ƒtƒ@ƒCƒ‹–¼‚É‘å•¶š¬•¶š‚Ì‹æ•Ê‚ª‚È‚¢ƒVƒXƒeƒ€—p‚Ìİ’è:
"   (—á: DOS/Windows/MacOS)
"
if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tagsƒtƒ@ƒCƒ‹‚Ìd•¡–h~
  set tags=./tags,tags
endif

"---------------------------------------------------------------------------
"ƒNƒŠƒbƒvƒ{[ƒh‚ÉŠÖ‚·‚éİ’è:
"
"ƒNƒŠƒbƒvƒ{[ƒh‚ğWindows‚Æ˜AŒg
"set clipboard=unnamed

"---------------------------------------------------------------------------
"©“®Ü‚è‚½‚½‚İİ’è
set foldmethod=indent
set foldlevel=99
set foldcolumn=0
set nofoldenable
"---------------------------------------------------------------------------
" ƒvƒ‰ƒbƒgƒz[ƒ€ˆË‘¶‚Ì“Á•Ê‚Èİ’è

" Win‚Å‚ÍPATH‚É$VIM‚ªŠÜ‚Ü‚ê‚Ä‚¢‚È‚¢‚Æ‚«‚Éexe‚ğŒ©‚Â‚¯o‚¹‚È‚¢‚Ì‚ÅC³
if (has('win32') || has('win64')) && $PATH !~? '\(^\|;\)' . escape($VIM, '\\') . '\(;\|$\)'
  let $PATH = $VIM . ';' . $PATH
elseif has('mac')
  " Mac‚Å‚ÍƒfƒtƒHƒ‹ƒg‚Ì'iskeyword'‚ªcp932‚É‘Î‰‚µ‚«‚ê‚Ä‚¢‚È‚¢‚Ì‚ÅC³
  set iskeyword=@,48-57,_,128-167,224-235
elseif has('unix')
"linux‚Å‚ÍƒGƒ“ƒR[ƒh‚ğUTF8‚ÉB
	:set encoding=utf-8
	:set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
endif

""" netrw----------------------------------------------------------------------
let g:netrw_mousemaps =0  "ƒ}ƒEƒX‚Ìƒ}ƒbƒv‚ğ–³Œø‚É‚·‚é
""" PHP----------------------------------------------------------------------
"PHP
"let php_sql_query=1 "•¶š—ñ’†‚ÌSQL‚ğƒnƒCƒ‰ƒCƒg‚·‚é
"let php_htmlInString=1 "•¶š—ñ’†‚ÌHTML‚ğƒnƒCƒ‰ƒCƒg‚·‚é
"let php_noShortTags=1 "ƒVƒ‡[ƒgƒ^ƒO(<?‚ğ–³Œø‚É‚·‚é¨ƒnƒCƒ‰ƒCƒgœŠO‚É‚·‚é)
"let php_folding=1 "ƒNƒ‰ƒX‚ÆŠÖ”‚ÌÜ‚è‚½‚½‚İ‚ğ—LŒø‚É‚·‚é
set matchpairs=(:),{:},[:],<:>
let b:match_words = '<:>,<div.*>:</div>'
let b:match_words = "if:endif,foreach:endforeach,\<begin\>:\<end\>"
let b:match_ignorecase = 1

""" •âŠ®---------------------------------------------------------------------
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

""" «‘---------------------------------------------------------------------
autocmd FileType php :setlocal dictionary=~/.vim/dict/php.dict
""" ƒwƒ‹ƒv-------------------------------------------------------------------
set helplang=ja,en

""" ƒXƒNƒ[ƒ‹----------
" Use vsplit mode
" if has("vim_starting") && !has('gui_running') && has('vertsplit')
"     function! g:EnableVsplitMode()
"         " enable origin mode and left/right margins
"         let &t_CS = "y"
"         let &t_ti = &t_ti . "\e[?6;69h"
"         " let &t_te .= "\e7\e[?6;69l\e8"
"         " ’[––‚Ì‘ã‘ÖƒXƒNƒŠ[ƒ“‚ğg‚í‚È‚¢İ’è‚É‚µ‚Ä‚¢‚él
"         let &t_te = "\e[?6;69l" . &t_te
"         let &t_CV = "\e[%i%p1%d;%p2%ds"
"         call writefile([ "\e[?6h\e[?69h" ], "/dev/tty", "a")
"     endfunction
" 
"     " old vim does not ignore CPR
"     map <special> <Esc>[3;9R <Nop>
" 
"     " new vim can't handle CPR with direct mapping
"     " map <expr> ^[[3;3R
"     g:EnableVsplitMode()
"     set t_F9=[3;3R
"     map <expr> <t_F9>
"     g:EnableVsplitMode()
"     let &t_RV .= "\e[?6;69h\e[1;3s\e[3;9H\e[6n\e[0;0s\e[?6;69l"
" endif
""" ‚»‚Ì‘¼İ’è---------------------------------------------------------------
" ƒoƒbƒtƒ@‚ğØ‘Ö‚¦‚Ä‚àundo‚ÌŒø—Í‚ğ¸‚í‚È‚¢
set hidden
" ‹N“®‚ÌƒƒbƒZ[ƒW‚ğ•\¦‚µ‚È‚¢
set shortmess+=I

"-------------------------------------------------------------------------------
" Mapping <jump-tag>
"-------------------------------------------------------------------------------
" ƒRƒ}ƒ“ƒh       ƒm[ƒ}ƒ‹ƒ‚[ƒh ‘}“üƒ‚[ƒh ƒRƒ}ƒ“ƒhƒ‰ƒCƒ“ƒ‚[ƒh ƒrƒWƒ…ƒAƒ‹ƒ‚[ƒh
" map/noremap           @            -              -                  @ 
" nmap/nnoremap         @            -              -                  -
" imap/inoremap         -            @              -                  - 
" cmap/cnoremap         -            -              @                  -  
" vmap/vnoremap         -            -              -                  @
" map!/noremap!         -            @              @                  -
"
" noremap‚Í‘f‚Ìvim‚ª‚Á‚Ä‚¢‚é‹@”\‚ÉŠ„‚è“–‚Ä‚é‚Ì‚ÅŠî–{noremap‚ğg‚¢A
" ƒvƒ‰ƒOƒCƒ“‚È‚ÇŒã•t‚¯‚Ì‹@”\‚ÉŠ„‚è“–‚Ä‚éê‡‚Ímap‚ğg‚¤B

"ƒL[ƒ}ƒbƒv ------------------------------------------------------------------------------
" V‹Kƒ^ƒu‚Å.vimrc‚ğŠJ‚­
nnoremap <Leader>. :<C-u>tabedit $MYVIMRC<CR>
"
" omni•âŠ®
imap <C-Space> <C-x><C-o>

" netrw
noremap <C-f> :<C-u>Explore<CR>
" outline
noremap <C-o> :<C-u>vimgrep function % \| cw<CR><C-w>b<
" date “ü—Í
noremap <Leader>d <ESC>a<C-R>=strftime("%Y/%m/%d (%a)")<ESC><ESC>
" time “ü—Í
noremap <Leader>t <ESC>a<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<ESC><ESC>


" Plugin
"""--------------------------------------------------------------------------
""" Unite.vim
"""--------------------------------------------------------------------------

" ‹N“®‚ÉƒCƒ“ƒT[ƒgƒ‚[ƒh‚ÅŠJn‚©
let g:unite_enable_start_insert = 1
" ƒ„ƒ“ƒN—š—ğ‚ğ—LŒø‚É‚·‚é‚©
let g:unite_source_history_yank_enable =1  "history/yank‚Ì—LŒø‰»

" ƒCƒ“ƒT[ƒg^ƒm[ƒ}ƒ‹‚Ç‚¿‚ç‚©‚ç‚Å‚àŒÄ‚Ño‚¹‚é‚æ‚¤‚ÉƒL[ƒ}ƒbƒv
" ƒtƒ@ƒCƒ‹ˆê——
"nnoremap <silent> <C-f> :UniteWithBufferDir -buffer-name=files file<CR>
"inoremap <silent> <C-f> <ESC>:UniteWithBufferDir -buffer-name=files file<CR>
" ƒoƒbƒtƒ@ˆê——
nnoremap <silent> <C-b> :<C-u>Unite buffer bookmark file_mru<CR>
inoremap <silent> <C-b> <ESC>:<C-u>Unite buffer bookmark file_mru <CR>

" ƒŒƒWƒXƒ^ˆê——
" noremap <C-y> :Unite -buffer-name=register register<CR>
inoremap <C-y> <ESC>:<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> <C-y> :<C-u>Unite history/yank<CR>

" unite.vimã‚Å‚ÌƒL[ƒ}ƒbƒsƒ“ƒO
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " ’PŒê’PˆÊ‚©‚çƒpƒX’PˆÊ‚Åíœ‚·‚é‚æ‚¤‚É•ÏX
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
  " ESCƒL[‚ğ2‰ñ‰Ÿ‚·‚ÆI—¹‚·‚é
  nnoremap <silent><buffer> <ESC><ESC> :<C-u>q<CR>
  inoremap <silent><buffer> <ESC><ESC> <ESC>:<C-u>q<CR>
endfunction

nnoremap <silent> <Leader>ug :Unite grep:%:-iHRn<CR>
""" unite-outline------------------------------------------------------------------
"nnoremap <silent> <C-o> :<C-u>Unite outline<CR>
"inoremap <silent> <C-o> <ESC>:<C-u>Unite outline<CR>

"""--------------------------------------------------------------------------
""" ‚»‚Ì‘¼ƒvƒ‰ƒOƒCƒ“
"""--------------------------------------------------------------------------

"""vim-ref----------------------------------------------------------------------
let g:ref_source_webdict_sites = {
\   'wikipedia:ja': 'http://ja.wikipedia.org/wiki/%s',
\   'wiktionary': {
\     'url': 'http://ja.wiktionary.org/wiki/%s',
\     'keyword_encoding': 'utf-8',
\     'cache': 1,
\   },
\   'alc': {
\     'url': 'http://eow.alc.co.jp/search?q=%s',
\     'keyword_encoding': 'utf-8',
\     'cache': 1 ,
\     'line': 38 ,
\   },
\ }
let g:ref_source_webdict_sites.default = 'alc'

let g:ref_phpmanual_path = $HOME.'/.vim/ref/php-chunked-xhtml'
" clojure erlang man perldoc phpmanual pydoc refe

""" syntastic-----------------------------------------------------------------------------
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html'] }
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checker = 'jshint'
let g:syntastic_java_checker = "javac"
"npm install -g jshint

""ŠO•”ƒtƒ@ƒCƒ‹“Ç‚İ‚İ
if filereadable(expand('~/.vimrc.local'))
	source ~/.vimrc.local
endif
""------euoutline----------------------------
