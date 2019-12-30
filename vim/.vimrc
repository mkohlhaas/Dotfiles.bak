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
Plug 'easymotion/vim-easymotion'                        " Highlighs all possible choices and allows you to press one key to jump directly to the target. Type <space> twice then movement key like w, f, t, b, e ,k, j etc. to invoke EasyMotion.
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
Plug 'google/vim-searchindex'                           " Display number of search matches & index of a current match.
Plug 'Valloric/YouCompleteMe'                           " A code-completion engine for Vim.
Plug 'robertmeta/nofrils'				" An extremely minimalist colorscheme, even opting out of the second L in frills
Plug 'machakann/vim-highlightedyank'			" Make the yanked region apparent!
Plug 'airblade/vim-rooter'				" Changes Vim working directory to project root (identified by presence of known directory or file).
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }		" A command-line fuzzy finder.
Plug 'junegunn/fzf.vim'					" fzf loves vim.
Plug 'romainl/vim-cool'					" A very simple plugin that makes hlsearch more useful.
Plug 'rust-lang/rust.vim'				" Vim configuration for Rust.
Plug 'andymass/vim-matchup'				" vim match-up: even better %. Navigate and highlight matching words. Modern matchit and matchparen replacement.
Plug 'kana/vim-textobj-user'                            " Dependency for kana/vim-textobj-entire.
Plug 'kana/vim-textobj-entire'                          " Text objects for entire buffer.
Plug 'fvictorio/vim-textobj-backticks'			" Vim text objects for regions inside backticks.
" Plug 'thinca/vim-textobj-between'			" Text objects for a range between a character. af{char}/if{char} for a region between {char}s. Collides with schmidh/vim-textobj-function.
Plug 'deathlyfrantic/vim-textobj-blanklines'		" A Vim text object for selecting blank lines. a<Space>/i<Space> for groups of blank (only whitespace) lines. ip/ap (inner/outer paragraph) works out of the box for all blank lines.
Plug 'Julian/vim-textobj-brace'				" A text object for the closest inner () {} *or* []. aj/ij for the closest region between any of () [] or {}.
Plug 'Chun-Yang/vim-textobj-chunk'			" ac/ic for all the lines contain one of {}, [], or () pairs.
Plug 'johntyree/vim-textobj-comment'			" Vim text objects for comments. ac/ic for a comment.
Plug 'kana/vim-textobj-datetime'			" ada/ida and others for date and timer. da = auto, df = full, dd = date, dt = time
Plug 'glts/vim-textobj-indblock'			" Vim text objects for blocks of indentation whitespace. ao/io for a block of indentation (i.e.  spaces).
" Plug 'vimtaku/vim-textobj-keyvalue'			" ak/iv for key/value, esp. useful for JSON files. Collides with plugin 'Julian/vim-textobj-variable-segment'.
Plug 'kana/vim-textobj-lastpat'				" Text objects for the last searched pattern. a//i/ for a region matched to the last search pattern.
Plug 'kana/vim-textobj-line'				" Text object for the current line. al/il for the current line.
Plug 'sgur/vim-textobj-parameter'			" Provides text objects (a, and i, by default) to select parameters of functions. Use 'i2,' for trailing whitespace characters.
Plug 'saaguero/vim-textobj-pastedtext'			" A convenient text object for last pasted text. By default it creates the following mapping: gb. vgb Select last pasted text.  =gb Re-indent last pasted text.  dgb Delete last pasted text.  gcgb Comment last pasted text
Plug 'paulhybryant/vim-textobj-path'			" ap/ip for next file path (w/o basename), aP/iP for the previous file path (w/o basename).
Plug 'beloglazov/vim-textobj-punctuation'		" au/iu for the text between the cursor position till the closest punctuation. 
Plug 'reedes/vim-textobj-quote'				" aq/iq aQ/iQ for “typographic-quoted” strings.
Plug 'saihoooooooo/vim-textobj-space'			" aS/iS for a region filled with various space characters.
Plug 'kana/vim-textobj-syntax'				" Text object for syntax highlighted items. ay/iy for a syntax-highlighted item.
" Plug 'lucapette/vim-textobj-underscore'			" Underscore text-object for Vim. a_/i_ for a region between _s such as bar in foo_bar_baz.
Plug 'Julian/vim-textobj-variable-segment'		" av/iv for a region between either _s or camelCaseVariables.
" Plug 'idbrii/textobj-word-column.vim'			" Adds text-objects for word-based columns in Vim. ac/ic/aC/iC for columns of text defined by word or WORD. Collides with plugin 'Chun-Yang/vim-textobj-chunk'.
Plug 'whatyouhide/vim-textobj-xmlattr'			" A vim text object for XML/HTML attributes. ax/ix for XML/HTML attributes.
Plug 'schmidh/vim-textobj-function'			" Text object for functions.
call plug#end()

colorscheme nofrils-dark

" Text object comment default key binding collide with chunck text object.
let g:textobj_outer_comment_key = 'ab'
let g:textobj_inner_comment_key = 'ib'
let g:textobj_outer_Comment_key = 'aB'

" For plugin saaguero/vim-textobj-pastedtext:
" let g:pastedtext_select_key = 'p'

if executable('ag')                                     " Use silver searcher (if available) for finding files. Invoke with ':Ack'.
  let g:ackprg = 'ag --vimgrep'
endif

set mouse=a                                             " Enable mouse.
set nowrap

" packadd! matchit                                        " This plugin makes the "%" command jump to matching HTML tags, if/else/endif in Vim scripts, etc.

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

" Remap fzf actions to be prefixed by a leader key.
" Add namespace for fzf.vim exported commands.
let g:fzf_command_prefix = 'Fzf'
noremap <leader>f :FzfFiles<CR>
noremap <leader>b :FzfBuffers<CR>
noremap <leader>m :FzfMarks<CR>
noremap <leader>l :FzfBLines<CR>
" File path completion in Insert mode using fzf
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-buffer-line)
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
noremap <leader>d :bd<CR>
noremap <leader>w :w<CR>

" Squeeze blank lines,
function! SqueezeBlankLines()
    %!cat -s
endfunction
nnoremap <leader>s :call SqueezeBlankLines()<cr>

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
