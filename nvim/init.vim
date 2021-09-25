" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" set stuff
set relativenumber
set mouse=a
set guifont=Hack:h10

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Enable auto completion menu after pressing TAB.
" set wildmenu

" Make wildmenu behave like similar to Bash completion.
" set wildmode=list:longest

" neovide
" let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_cursor_vfx_mode = "wireframe"
" let g:neovide_cursor_vfx_mode = "torpedo"

" copy paste ig
" " Copy to clipboard
vnoremap  <C-v>y  "+y
nnoremap  <C-v>Y  "+yg_
nnoremap  <C-v>y  "+y
nnoremap  <C-v>yy  "+yy

" " Paste from clipboard
nnoremap <C-v>p "+p
nnoremap <C-v>P "+P
vnoremap <C-v>p "+p
vnoremap <C-v>P "+P

tnoremap <Esc> <C-\><C-n>


" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            
Plugin 'VundleVim/Vundle.vim'  
Plugin 'dracula/vim', { 'as': 'dracula' }
Plugin 'https://github.com/ycm-core/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' ,
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()               " required

" the glaive#Install() should go after the call vundle#end()
call glaive#Install()

" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"

colorscheme dracula
