" Setup Vundle:
" For this to work, you must install the vundle plugin manually.
" https://github.com/gmarik/vundle
" To install vundle, copy all the files from the repo into your respective
set nocompatible " Fuck VI... That's for grandpas.
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"The format is:  Bundle 'githubUsername/repoName'
Bundle 'tpope/vim-classpath'
Plugin 'tpope/vim-haml'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-commentary'
Bundle 'elixir-editors/vim-elixir'
Bundle "myusuf3/numbers.vim"
Bundle 'leshill/vim-json'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'arcticicestudio/nord-vim'
Plugin 'itchyny/lightline.vim'

call vundle#end()            " required
filetype plugin indent on 
syntax on " Syntax highlighting

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

let mapleader=" "
let g:clojure_fuzzy_indent = 1
" So we don't have to reach for escape to leave insert mode.
inoremap jk <esc>

" create new vsplit, and switch to it.
noremap <leader>v <C-w>v

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use sane regex's when searching
nnoremap / /\v
vnoremap / /\v

" Clear match highlighting
noremap <leader><x> :noh<cr>:call clearmatches()<cr>

" Quick buffer switching - like cmd-tab'ing
nnoremap <leader><leader> <c-^>

noremap j gj
noremap k gk
noremap <silent> <leader>m :FZF<CR>
map <C-n> :NERDTreeToggle<CR>

noremap <leader>c <Plug>CommentaryLine

set laststatus=2

let g:NERDTreeNodeDelimiter = "\u00a0"

set rtp+=/usr/local/opt/fzf
let g:nord_uniform_status_lines = 1
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
set tgc
set noshowmode
let NERDTreeQuitOnOpen=1
set clipboard=unnamed
colorscheme nord
