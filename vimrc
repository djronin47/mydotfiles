set autoread
let mapleader = ","
let g:mapleader = ","
set ruler
set showmatch
set smarttab
set tabstop=2
set shiftwidth=2
set ai
set si
syntax on
set hlsearch
set autoindent
set relativenumber
set number
set showcmd
set cursorline
filetype indent on
set lazyredraw
set incsearch
" set cmdheight=2
set smartcase
set magic
filetype plugin indent on
execute pathogen#infect()

set runtimepath^=~/.vim/bundle/vim-erlang-runtime/

let g:neocomplete#enable_at_startup = 1
let g:acp_enableAtStartup = 0

" elm stuff
let g:elm_format_autosave = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

"let g:elm_syntastic_show_warnings = 1

"let g:ycm_semantic_triggers = {
"     \ 'elm' : ['.'],
"     \}
call neocomplete#util#set_default_dictionary(
  \ 'g:neocomplete#sources#omni#input_patterns',
  \ 'elm',
  \ '\.')

let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeWinPos = "right"
map <C-n> :NERDTreeToggle<CR>

set laststatus=2

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set list lcs=tab:\|\ 

set splitbelow
set splitright

hi CursorLine ctermbg=black
hi CursorColumn ctermbg=black
