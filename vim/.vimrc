" $ sudo add-apt-repository ppa:jonathonf/vim-daily       # Add latest vim versions to Ubuntu's repository using command line.

" Make sure plugin manager is automatically installed including the plugins themselves.
if empty(glob('~/.vim/autoload/plug.vim')) 
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible                                        " Turn off vi compatibility.
filetype indent plugin on                               " Enable file type based indentation.
syntax on                                               " Enable syntax highlighting
set hidden                                              " If the active buffer is modified, Vim will automatically hide it when we navigate away from it.

call plug#begin()                                       " Load plugins.
Plug 'ctrlpvim/ctrlp.vim'                               " Fuzzy file, buffer, mru, tag, etc finder. Invokde with <Ctrl-P>.
Plug 'easymotion/vim-easymotion'                        " Highlighs all possible choices and allows you to press one key to jump directly to the target. Type <space> twice then movement key like w, f, t, b, e ,k, j etc. to invoke EasyMotion.
Plug 'mileszs/ack.vim'                                  " File finder.
" Plug 'tpope/vim-vinegar'                                " File manager. Invoke with '-'.
Plug 'junegunn/vim-plug'                                " Documentation for the plugin manager.
Plug 'simnalamburt/vim-mundo'                           " Vim undo tree visualizer.
Plug 'vim-airline/vim-airline'                          " Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline-themes'                   " A collection of themes for vim-airline.
Plug 'tpope/vim-commentary'                             " Comment stuff out.
Plug 'tpope/vim-surround'                               " Quoting/parenthesizing made simple.
Plug 'nelstrom/vim-visual-star-search'                  " Start a * or # search from a visual block.
Plug 'tpope/vim-abolish'                                " Easily search for, substitute, and abbreviate multiple variants of a word.
Plug 'skywind3000/asyncrun.vim'                         " Run shell commands asyncronously and output to quickfix window.
Plug 'kana/vim-smartinput'                              " Smart input for programmers: https://bit.ly/2ZdNJuF
Plug 'kana/vim-textobj-user'                            " Dependency for kana/vim-textobj-entire.
Plug 'kana/vim-textobj-entire'                          " Text objects for entire buffer.
Plug 'deathlyfrantic/vim-textobj-blanklines'            " A Vim text object for selecting blank lines.
Plug 'kristijanhusak/vim-hybrid-material'               " Material color scheme for Vim based on w0ng/vim-hybrid color scheme.
Plug 'google/vim-searchindex'                           " Display number of search matches & index of a current match.
Plug 'SirVer/ultisnips'                                 " The ultimate snippet solution for Vim.
Plug 'schmidh/MyUltiSnips'                              " My personal snippets for UltiSnips.
Plug 'honza/vim-snippets'                               " Default snippets.
Plug 'Valloric/YouCompleteMe'                           " A code-completion engine for Vim.
call plug#end()

colorscheme hybrid_reverse 

if executable('ag')                                     " Use silver searcher (if available) for finding files. Invoke with ':Ack'.
  let g:ackprg = 'ag --vimgrep'
endif

set mouse=a                                             " Enable mouse.

packadd! matchit                                        " This plugin makes the "%" command jump to matching HTML tags, if/else/endif in Vim scripts, etc.

set ignorecase                                          " Ignore case when searching.
set smartcase                                           " Turn of ignorecase when search pattern contains uppercase character(s).
set autoindent                                          " Respect indentation when starting a new line.
" set expandtab                                           " Expand tabs to spaces. Essential in Python.
" set tabstop=4                                           " Number of spaces tab is counted for.
set shiftwidth=4                                        " Number of spaces to use for autoindent.
set backspace=2                                         " Fix backspace behavior on most terminals.
set path+=**                                            " Search down in to subfolders. Applies to all file operations.
set wildmenu                                            " Show completions above status line.
set wildmode=full                                       " Behavior close to zsh shell.
set hlsearch                                            " Highlight searches.
set incsearch                                           " Highlight found searches while typing.
set history=1000                                        " Set command history size.
set runtimepath+=~/.vim/plugged/                        " Add search path for SirVer/ultisnips
set number
set relativenumber
call mkdir($HOME . "/.vim/undodir", "p")                " Set up undos.
set undodir=~/.vim/undodir
set undofile
call mkdir($HOME . "/.vim/swap", "p")                   " Set up swap directory. Does not work. Create directory manually.
set directory=~/.vim/swap/
set encoding=utf-8

" Map the leader key to a spacebar.
let mapleader = "\<space>"

" Remap CtrlP actions to be prefixed by a leader key.
noremap <leader>p :CtrlP<CR>
noremap <leader>b :CtrlPBuffer<CR>
noremap <leader>m :CtrlPMRU<CR>
" Show undo tree with F5
nnoremap <F5> :MundoToggle<CR>
" Make Y yank till end of line
nnoremap Y y$
" Build cmake project with Ctrl-Shift-B as in Visual Studio. You might want to
" clear this shortcut in KDE's konsole first.
" noremap <C-S-B> :AsyncRun cmake --build build<CR>
" Move to next and previous buffers.
noremap <M-Left> :bp<CR>
noremap <M-Right> :bn<CR>
" noremap <M-Up> :tabprevious<CR>
" noremap <M-Down> :tabnext<CR>
" noremap <M-Home> :tabmove 0<CR>
" noremap <M-End> :tabmove<CR>
" '%%' expands to the path of the active buffer. For example when opening a
" file ':e %%'
" Easy Expansion of the Active File Directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" Disable arrow keys in normal mode.
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
" Silence search highlighting.
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!         " https://www.cyberciti.biz/faq/vim-vi-text-editor-save-file-without-root-permission/

" Create compilation database and link it to the root of the project.
" Important for clangd.
" let g:cmake_export_compile_commands = 1
" let g:cmake_ycm_symlinks = 1

" Setup snippets directory for UltiSnips. Important for schmidh/MyUltiSnips.
" let g:UltiSnipsSnippetDirectories = ["UltiSnips", "MyUltiSnips"]
let g:UltiSnipsListSnippets = '<leader>sl'
" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

