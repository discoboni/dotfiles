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

colorscheme badwolf
syntax on

filetype plugin indent on


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ======= VIM ========
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'		"files manager
	map <F1> :NERDTreeToggle<CR>
Plugin 'kien/ctrlp.vim'				"search evgrywhere (fuzzysearch)
Plugin 'ervandew/supertab'			"change autocompletion to tab
Plugin 'easymotion/vim-easymotion' 
	let g:EasyMotion_mapping_w = '\'
	let g:EasyMotion_mapping_b = '<leader>\'
Plugin 'itchyny/lightline.vim'		"powerline for vim
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator' "vim and tmux integration

" ======= SNIPPETS =======
Plugin 'SirVer/ultisnips'
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
Plugin 'honza/vim-snippets'

" ======= THEMES ========
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

" ======= WEB DEV ======= 
Plugin 'mattn/emmet-vim'			"web snippets and some other things
	let g:user_emmet_install_global = 1

call vundle#end()

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remap unfold/fold to space
nnoremap <C-q> za

"custom binds
inoremap jk <Esc>
