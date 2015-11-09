"----------------------------------------------------
" ��{�I�Ȑݒ�
"
"" tiny �� vim�΍�
if !1 | finish | endif
"" vi�Ƃ̌݊������Ƃ�Ȃ�(vim�̓Ǝ��g���@�\���g����)
set nocompatible
" �r�[�v����炳�Ȃ�
set vb t_vb=
"NeoBundle ------------------------------------------
filetype off
if has('vim_starting')
  set runtimepath +=$HOME/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
" �g�������v���O�C���̃��|�W�g��
NeoBundle 'mattn/webapi-vim'
NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/sudo.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/vcscommand.vim'
NeoBundle 'Align'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'vim-jp/vimdoc-ja'

NeoBundle 'evidens/vim-twig'

call neobundle#end()

 " :NeoBundleList          - list configured bundles
 " :NeoBundleInstall(!)    - install(update) bundles
 " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
filetype plugin indent on

NeoBundleCheck

" ���̑��v���O�C��----------------------------------------------------------
source $VIMRUNTIME/macros/matchit.vim
"-init----------------------------------------------------------------------
"leader���X�y�[�X�ɕύX
let mapleader=" "
"---------------------------------------------------------------------------
" �����̋����Ɋւ���ݒ�:

" �C���N�������^������
set incsearch
" �����Ƀ}�b�`�������ׂẴe�L�X�g���n�C���C�g
set hlsearch
" �������ɑ啶���������𖳎� (noignorecase:�������Ȃ�)
set ignorecase
" �啶���������̗������܂܂�Ă���ꍇ�͑啶�������������
set smartcase
" �������Ƀt�@�C���̍Ō�܂ōs������ŏ��ɖ߂� (nowrapscan:�߂�Ȃ�)
set wrapscan
" �R�}���h�A�����p�^�[����100�܂ŗ����Ɏc��
set history=100
"---------------------------------------------------------------------------
" �ҏW�Ɋւ���ݒ�:
"
" ���s�R�[�h�̎����F��
set fileformats=unix,dos,mac
" �o�b�N�X�y�[�X�ŃC���f���g����s���폜�ł���悤�ɂ���
set backspace=2
" ���ʓ��͎��ɑΉ����銇�ʂ�\�� (noshowmatch:�\�����Ȃ�)
set showmatch
" �Ή����銇�ʂ̕\�����Ԃ�2�ɂ���
set matchtime=2
" �R�}���h���C���⊮����Ƃ��ɋ������ꂽ���̂��g��(�Q�� :help wildmenu)
set wildmenu
" ���͂���Ă���e�L�X�g�̍ő啝
" (�s�������蒷���Ȃ�ƁA���̕��𒴂��Ȃ��悤�ɋ󔒂̌�ŉ��s�����)�𖳌��ɂ���
set textwidth=0
" �������s�𖳌��ɂ���
set formatoptions=q
" �e�L�X�g�}�����̎����܂�Ԃ�����{��ɑΉ�������
set formatoptions+=mM
"---------------------------------------------------------------------------
" �C���f���g

" �����I�ɃC���f���g���� (noautoindent:�C���f���g���Ȃ�)
set autoindent
" �^�u���Ή�����󔒂̐�
set tabstop=4
" �^�u��o�b�N�X�y�[�X�̎g�p���̕ҏW���������Ƃ��ɁA�^�u���Ή�����󔒂̐�
set softtabstop=4
" �C���f���g�̊e�i�K�Ɏg����󔒂̐�
set shiftwidth=4
" �^�u���X�y�[�X�ɓW�J���Ȃ� (expandtab:�W�J����)
"set noexpandtab
set expandtab
set shiftround

" GUI�ŗL�ł͂Ȃ���ʕ\���̐ݒ�---------------------------------------------
"
" �s�ԍ���\��
set number
" ���[���[��\�� (noruler:��\��)
set ruler
" �^�u����s��\�� (list:�\��)
set list
" �ǂ̕����Ń^�u����s��\�����邩��ݒ�
set listchars=tab:>-,extends:<,trail:-,eol:<
" �����s��܂�Ԃ��ĕ\�� (nowrap:�܂�Ԃ��Ȃ�)
set wrap
" ��ɃX�e�[�^�X�s��\�� (�ڍׂ�:he laststatus)
set laststatus=2
" �R�}���h���C���̍��� (Windows�pgvim�g�p����gvimrc��ҏW���邱��)
set cmdheight=2
" �R�}���h���X�e�[�^�X�s�ɕ\��
set showcmd
" �^�C�g����\��
set title
" �X�e�[�^�X���C������ɕ\��
set laststatus=2
" �^�u�y�[�W����ɕ\��
set showtabline=2
" �V���^�b�N�X�n�C���C�g��L���ɂ���
syntax on
" �E�B���h�E�T�C�Y�����������Ȃ�
set noequalalways
" �E�B���h�E�̕���蒷���s�͐܂�Ԃ��āA���̍s�ɑ����ĕ\������
set wrap
colorscheme desert
" �X�e�[�^�X���C���ɕ\��������̎w��
set statusline=%2*%y\ %n%*\ %<%{winnr('$')>1?winnr().'/'.winnr('$').'\ ':''}%2*%f%1*%(\ [%M%R%H%W]\ %)%*%=\|%c/%P\|%{GetEFstatus()}%{fugitive#statusline()}

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
" �t�H���g�ݒ�
if has('unix')
	set guifont=Inconsolata\ 11
endif
" CUI�ŗL�̉�ʕ\���̐ݒ�---------------------------------------------
" �S�p�X�y�[�X�̕\��
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /�@/

:highlight User1 term=inverse,bold cterm=inverse,bold ctermfg=red
:highlight User2 term=inverse,bold cterm=inverse,bold ctermfg=black

" key�ꗗ
"   key           �Ӗ�         
" term    �����[���ł̑���     
" cterm   �J���[�[���ł̑���   
" ctermfg �J���[�[���ł̕����F 
" ctermbg �J���[�[���ł̔w�i�F 
" gui     GUI �ł̑���         
" font    GUI �ł̃t�H���g     
" guifg   GUI �ł̕����F       
" guibg   GUI �ł̔w�i�F       
" guisp   GUI �ł̔g���F       
" 
" �����ꗗ
"       ����                           ����                    
" bold              ������(cterm�ł͖��邭�Ȃ�)                
" underline         ����                                       
" undercurl         ���g��(gui�̂�, [c]term�ł�underline��(?)) 
" reverse(=inverse) �����F�Ɣw�i�F�𔽓]                       
" italic            �C�^���b�N                                 
" standout          reverse+bold(?)                            
" NONE              �g�p���Ȃ�(���Z�b�g)                       
"---------------------------------------------------------------------------
" �t�@�C������Ɋւ���ݒ�
"
" �X���b�v�t�@�C�����쐬���Ȃ�
set noswapfile
" �X���b�v�t�@�C���p�̃f�B���N�g��
" set directory=$HOME/vimbackup
" �o�b�N�A�b�v�t�@�C�����쐬���Ȃ�
set nobackup
" undo���t�@�C�����쐬���Ȃ�
if has('persistent_undo')
    set noundofile
endif
" �t�@�C�����ɑ啶���������̋�ʂ��Ȃ��V�X�e���p�̐ݒ�:
"   (��: DOS/Windows/MacOS)
"
if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tags�t�@�C���̏d���h�~
  set tags=./tags,tags
endif

"---------------------------------------------------------------------------
"�N���b�v�{�[�h�Ɋւ���ݒ�:
"
"�N���b�v�{�[�h��Windows�ƘA�g
"set clipboard=unnamed

"---------------------------------------------------------------------------
"�����܂肽���ݐݒ�
set foldmethod=indent
set foldlevel=99
set foldcolumn=0
set nofoldenable
"---------------------------------------------------------------------------
" �v���b�g�z�[���ˑ��̓��ʂȐݒ�

" Win�ł�PATH��$VIM���܂܂�Ă��Ȃ��Ƃ���exe�������o���Ȃ��̂ŏC��
if (has('win32') || has('win64')) && $PATH !~? '\(^\|;\)' . escape($VIM, '\\') . '\(;\|$\)'
  let $PATH = $VIM . ';' . $PATH
elseif has('mac')
  " Mac�ł̓f�t�H���g��'iskeyword'��cp932�ɑΉ�������Ă��Ȃ��̂ŏC��
  set iskeyword=@,48-57,_,128-167,224-235
elseif has('unix')
"linux�ł̓G���R�[�h��UTF8�ɁB
	:set encoding=utf-8
	:set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
endif

""" netrw----------------------------------------------------------------------
let g:netrw_mousemaps =0  "�}�E�X�̃}�b�v�𖳌��ɂ���
""" PHP----------------------------------------------------------------------
"PHP
"let php_sql_query=1 "�����񒆂�SQL���n�C���C�g����
"let php_htmlInString=1 "�����񒆂�HTML���n�C���C�g����
"let php_noShortTags=1 "�V���[�g�^�O(<?�𖳌��ɂ��遨�n�C���C�g���O�ɂ���)
"let php_folding=1 "�N���X�Ɗ֐��̐܂肽���݂�L���ɂ���
set matchpairs=(:),{:},[:],<:>
let b:match_words = '<:>,<div.*>:</div>'
let b:match_words = "if:endif,foreach:endforeach,\<begin\>:\<end\>"
let b:match_ignorecase = 1

""" �⊮---------------------------------------------------------------------
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

""" ����---------------------------------------------------------------------
autocmd FileType php :setlocal dictionary=~/.vim/dict/php.dict
""" �w���v-------------------------------------------------------------------
set helplang=ja,en

""" ���̑��ݒ�---------------------------------------------------------------
" �o�b�t�@��ؑւ��Ă�undo�̌��͂�����Ȃ�
set hidden
" �N�����̃��b�Z�[�W��\�����Ȃ�
set shortmess+=I

"-------------------------------------------------------------------------------
" Mapping <jump-tag>
"-------------------------------------------------------------------------------
" �R�}���h       �m�[�}�����[�h �}�����[�h �R�}���h���C�����[�h �r�W���A�����[�h
" map/noremap           @            -              -                  @ 
" nmap/nnoremap         @            -              -                  -
" imap/inoremap         -            @              -                  - 
" cmap/cnoremap         -            -              @                  -  
" vmap/vnoremap         -            -              -                  @
" map!/noremap!         -            @              @                  -
"
" noremap�͑f��vim�������Ă���@�\�Ɋ��蓖�Ă�̂Ŋ�{noremap���g���A
" �v���O�C���Ȃǌ�t���̋@�\�Ɋ��蓖�Ă�ꍇ��map���g���B

"�L�[�}�b�v ------------------------------------------------------------------------------
" �V�K�^�u��.vimrc���J��
nnoremap <Leader>. :<C-u>tabedit $MYVIMRC<CR>
"
" omni�⊮
imap <C-Space> <C-x><C-o>

" netrw
noremap <C-f> :<C-u>Explore<CR>

" outline
autocmd FileType qf nnoremap <silent><buffer> <C-o> <CR>:<C-u>cclose<CR>

autocmd FileType php noremap <silent><buffer> <C-o> :<C-u>vimgrep function % \| cw<CR><C-w>b
autocmd FileType javascript noremap <silent><buffer> <C-o> :<C-u>vimgrep function % \| cw<CR><C-w>b
autocmd FileType sql noremap <silent><buffer> <C-o> :<C-u>vimgrep /\(\/\*\\|--\)/ % \| cw<CR><C-w>b
autocmd FileType markdown call s:eu_outline_setting_markdown()

function! s:eu_outline_setting_markdown()
    noremap <silent><buffer> <C-o> :<C-u>vimgrep /^#/ % \| cw<CR><C-w>b
endfunction

"augroup vimrc_loading
" autocmd!
" autocmd FileType php setlocal expandtab shiftwidth=2
" autocmd BufNewFile * put ='��ѩ'
"augroup END
"
" date ����
noremap <Leader>d <ESC>a<C-R>=strftime("%Y/%m/%d (%a)")<ESC><ESC>
" time ����
noremap <Leader>t <ESC>a<C-R>=strftime("%Y/%m/%d (%a) %H:%M")<ESC><ESC>


" Plugin
"""--------------------------------------------------------------------------
""" Unite.vim
"""--------------------------------------------------------------------------

" �N�����ɃC���T�[�g���[�h�ŊJ�n��
let g:unite_enable_start_insert = 1
" �����N������L���ɂ��邩
let g:unite_source_history_yank_enable =1  "history/yank�̗L����

" �C���T�[�g�^�m�[�}���ǂ��炩��ł��Ăяo����悤�ɃL�[�}�b�v
" �t�@�C���ꗗ
"nnoremap <silent> <C-f> :UniteWithBufferDir -buffer-name=files file<CR>
"inoremap <silent> <C-f> <ESC>:UniteWithBufferDir -buffer-name=files file<CR>
" �o�b�t�@�ꗗ
nnoremap <silent> <C-b> :<C-u>Unite buffer bookmark file_mru<CR>
inoremap <silent> <C-b> <ESC>:<C-u>Unite buffer bookmark file_mru <CR>

" ���W�X�^�ꗗ
" noremap <C-y> :Unite -buffer-name=register register<CR>
inoremap <C-y> <ESC>:<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> <C-y> :<C-u>Unite history/yank<CR>

" unite.vim��ł̃L�[�}�b�s���O
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " �P��P�ʂ���p�X�P�ʂō폜����悤�ɕύX
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
  " ESC�L�[��2�񉟂��ƏI������
  nnoremap <silent><buffer> <ESC><ESC> :<C-u>q<CR>
  inoremap <silent><buffer> <ESC><ESC> <ESC>:<C-u>q<CR>
endfunction

nnoremap <silent> <Leader>ug :Unite grep:%:-iHRn<CR>
""" unite-outline------------------------------------------------------------------
"nnoremap <silent> <C-o> :<C-u>Unite outline<CR>
"inoremap <silent> <C-o> <ESC>:<C-u>Unite outline<CR>

"""--------------------------------------------------------------------------
""" ���̑��v���O�C��
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

""�O���t�@�C���ǂݍ���
if filereadable(expand('~/.vimrc.local'))
	source ~/.vimrc.local
endif
""------euoutline----------------------------
" Vim�̃o�[�W�����ŕ���
""if version >= 700
" Vim 7.0�p�̃R�[�h
" elseif version >= 701
" Vim 7.1�p�̃R�[�h
" elseif version >= 702
" Vim 7.2�p�̃R�[�h
" endif
"
" OS�ŕ���
"
" has()���g���B
" ���������ʂ�Ԃ��Ă���Ȃ��Ă������Ȃ��B
"
" if has("unix")
"" UNIX���p�̃R�[�h
" elsef has('mac')
" " Mac�p�̃R�[�h
" elseif has("win32")
" " Windows���p�̃R�[�h
" endif
"
" GUI���ACUI���ŕ���
"
" gui_running���`�F�b�N����B
"
" if has("gui_running")
"" GUI��Vim�p�̃R�[�h
" else
"" CUI��Vim�p�̃R�[�h
" endif
"
" �R���p�C���I�v�V�����Ȃǂŕ���
"
" �������Ahas()���g���B
"
" :version
"" #=> VIM - Vi IMproved 7.2 (2008 Aug 9,
" compiled Mar 25 2010 01:10:31)
"" #=> MS-Windows 64 �r�b�g GUI ��
"" #=> �K�p�σp�b�`: 1-411
"" #=> Modified by koron.kaoriya@gmail.com
"" #=> Compiled by koron.kaoriya@gmail.com
"" #=> Big �� with GUI.  �@�\�̈ꗗ �L��
" (+)/����(-)
"" #=> +arabic +autocmd +balloon_eval
" +browse ++builtin_terms +byte_offset
" +cindent +clientserver +clipboard
" +cmdline_compl
" " #=> +cmdline_hist +cmdline_info
" +comments +cryptv +cscope +cursorshape
" +dialog_con_gui +diff +digraphs -dnd
" -ebcdic
" " #=> +emacs_tags +eval +ex_extra
" +extra_search +farsi +file_in_path
" +find_in_path +float +folding -footer
" +gettext/dyn
" " #=> ....
"
" clipboard���g���邩�A�ǂ����ŕ���
"
" if has("clipboard")
" " clipboard���g���R�[�h
" endif
"
" �ϐ��ŕ���
"
" exists()���g���B
" �v���O�C���������Ă��邩���Ȃ����A�̔��f�Ɏg���邱�Ƃ������B
"
" if exists("$LANG")
" " LANG���ϐ����ݒ肳��Ă���ꍇ�̃R�[�h
" endif
"
" event
" augroup vimrc_loading
"  autocmd!
"  autocmd BufNewFile * put ='��ѩ'
" augroup END
""--------------------------�t�@�C���̎�ނ��Ƃ̐ݒ�
"" smarty
autocmd FileType smarty setlocal noexpandtab tabstop=4 shiftwidth=4

"" html
autocmd FileType html setlocal noexpandtab tabstop=4 shiftwidth=4

"" javascript
"" autocmd FileType javascript setlocal noexpandtab tabstop=4 shiftwidth=4

