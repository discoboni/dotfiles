let mapleader = "\<Space>"
set laststatus=2 "activate status line
set foldmethod=indent
set foldlevel=99
set nocompatible
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
set t_Co=256
set completeopt=longest,menuone

colorscheme gruvbox
set background=dark
syntax on

filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ======= VIM ========
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'		"files manager
	map <F1> :NERDTreeToggle<CR>
Plugin 'kien/ctrlp.vim'				"search evgrywhere (fuzzysearch)
Plugin 'ervandew/supertab'			"change autocompletion to tab
Plugin 'easymotion/vim-easymotion' 
	let g:EasyMotion_mapping_w = '\'
	let g:EasyMotion_mapping_b = '<leader>\'
Plugin 'itchyny/lightline.vim'		"powerline for vim
Plugin 'Shougo/neocomplete.vim'
	let g:acp_enableAtStartup = 0
	let g:neocomplete#enable_at_startup = 1
	let g:neocomplete#enable_auto_select = 1
	if !exists('g:neocomplete#sources#omni#input_patterns')
	  let g:neocomplete#sources#omni#input_patterns = {}
	endif

" ======= SNIPPETS =======
Plugin 'SirVer/ultisnips'
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
Plugin 'honza/vim-snippets'

" ======= THEMES ========
Plugin 'dikiaap/minimalist'
Plugin 'fugalh/desert.vim'
Plugin 'morhetz/gruvbox'
Plugin 'sjl/badwolf'

" ======= GIT ========
Plugin 'airblade/vim-gitgutter'		"shows modification since last commit
Plugin 'scrooloose/syntastic'		"syntax

" ======= PYTHON ========
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
	let g:jedi#popup_on_dot = 1
	let g:jedi#use_tabs_not_buffers = 1 
	let g:jedi#completions_enabled = 1 
	autocmd FileType python setlocal omnifunc=jedi#completions "set jedi-vim as python autocompleter
	autocmd FileType python setlocal completeopt-=preview

" ======= C++ ==========
Plugin 'octol/vim-cpp-enhanced-highlight'


" ======= WEB DEV ======= 
Plugin 'mattn/emmet-vim'			"web snippets and some other things
	let g:user_emmet_install_global = 1

call vundle#end()


" ===== custom binds ======
inoremap jk <Esc>

" remap unfold/fold to space
nnoremap <C-q> za

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
