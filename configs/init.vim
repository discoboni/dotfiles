let mapleader = "\<Space>"
set foldmethod=indent
set foldlevel=99
set nocompatible
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set modeline
set textwidth=79
set autoindent
set fileformat=unix
set encoding=utf-8
set number 
set relativenumber
let python_highlight_all=1
set clipboard=unnamed
set showmatch
set cursorline
set showcmd
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
set t_Co=256


colorscheme gruvbox
set background=dark
syntax on

filetype plugin indent on

call plug#begin('~/.config/nvim/autoload/')

" ======= VIM ========
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'				"search evgrywhere (fuzzysearch)
Plug 'Shougo/neoinclude.vim'

Plug 'itchyny/lightline.vim' "powerline vim
	let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

Plug 'scrooloose/nerdtree'		"files manager
	map <F1> :NERDTreeToggle<CR>

Plug 'easymotion/vim-easymotion' 
	let g:EasyMotion_mapping_w = '\'
	let g:EasyMotion_mapping_b = '<leader>\'

Plug 'hkupty/nvimux'
	let g:nvimux_prefix='<C-a>'
	let nvimux_open_term_by_default=1

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	let g:deoplete#enable_at_startup = 1

Plug 'zchee/deoplete-clang'
	let g:deoplete#sources#clang#clang_header = '/usr/lib/clang' 
	let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
	set completeopt -=preview
	

" ======= SNIPPETS =======
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
	"Ultsnips config
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" ======= THEMES ========
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
	let g:gruvbox_contrast_dark="hard"
Plug 'Lokaltog/vim-distinguished'

" ======= GIT ========
Plug 'airblade/vim-gitgutter'		"shows modification since last commit

Plug 'scrooloose/syntastic'		"syntax
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

" ======= PYTHON ========
Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'
	let g:jedi#popup_on_dot = 1
	let g:jedi#use_tabs_not_buffers = 1 
	let g:jedi#completions_enabled = 1 
	autocmd FileType python setlocal omnifunc=jedi#completions "set jedi-vim as python autocompleter
	autocmd FileType python setlocal completeopt-=preview

" ======= C++ ==========
Plug 'octol/vim-cpp-enhanced-highlight'


" ======= WEB DEV ======= 
Plug 'mattn/emmet-vim'			"web snippets and some other things
	let g:user_emmet_install_global = 1

call plug#end()

" ===== custom binds ======
inoremap jk <Esc>

" remap unfold/fold to space
nnoremap <C-q> za

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Toggle search highlight
nnoremap <F3> :set hlsearch!<CR>

"auto insert mode terminal
if &buftype == "terminal" | startinsert | endif

" terminal
tnoremap <F12> <C-\><C-n> 
set switchbuf+=useopen
function! TermEnter()
  let bufcount = bufnr("$")
  let currbufnr = 1
  let nummatches = 0
  let firstmatchingbufnr = 0
  while currbufnr <= bufcount
    if(bufexists(currbufnr))
      let currbufname = bufname(currbufnr)
      if(match(currbufname, "term://") > -1)
        echo currbufnr . ": ". bufname(currbufnr)
        let nummatches += 1
        let firstmatchingbufnr = currbufnr
        break
      endif
    endif
    let currbufnr = currbufnr + 1
  endwhile
  if(nummatches >= 1)
    execute ":sbuffer ". firstmatchingbufnr
    startinsert
  else
    execute ":terminal"
  endif
endfunction
map <F12> :call TermEnter()<CR>
function! PhpUnit()
  call TermEnter()
  normal i phpunit
endfunction
map <F11> :call PhpUnit()<CR>

ino " ""<left>
inoremap <expr> " strpart(getline("."), col(".")-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
ino ' ''<left>
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
ino ( ()<left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
ino [ []<left>
"inoremap <expr> ]  strpart(getline('.'], col('.']-1, 1] == "]" ? "\<Right>" : "]"
ino { {}<left>
ino {<CR> <CR>{<CR>}<ESC>O
