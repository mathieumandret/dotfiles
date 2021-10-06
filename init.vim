set number " Line numbers
filetype plugin indent on " Autodetect filetypes
set nowrap " No line wrap
set showcmd " Show commands as they are typed
set noshowmode " Dont show current mode
set ruler
" Better splits
set splitright
set splitbelow
" Tabs size
set tabstop=4
set shiftwidth=4
" Auto cd in working directory
set autochdir
" Syntax highlighting
syntax on
set background="dark"
" Space as leader
map <SPACE> <leader>
" Unfold everything on file opening
set foldlevel=20
" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'chriskempson/base16-vim' " Colorscheme
Plug 'vim-airline/vim-airline' " Status line
Plug 'vim-airline/vim-airline-themes' " Statuline themes
Plug 'junegunn/limelight.vim' " Highlight current paragraph
Plug 'junegunn/goyo.vim' " Distraction free mode
Plug 'jiangmiao/auto-pairs' " Pairing
Plug 'tpope/vim-surround' " Matching symbols
Plug 'dhruvasagar/vim-table-mode' " Tables
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'lynnard/pandoc-preview.vim' " PDF preview for pandoc
Plug 'tpope/vim-fugitive' " Git integration
Plug 'lervag/vimtex' " Latex
Plug 'aserebryakov/vim-todo-lists' " To_do list utility
Plug 'junegunn/fzf' " Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'aklt/plantuml-syntax' " PlantUML support
Plug 'sheerun/vim-polyglot' " Syntax highlighting
Plug 'uiiaoo/java-syntax.vim' " Java syntax highlighting
Plug 'majutsushi/tagbar' " Outline
Plug 'oblitum/rainbow' " Matching colors symbols
Plug 'udalov/kotlin-vim' " Kotlin support
call plug#end()
" Set colorcheme
let base16colorspace=256
colo base16-seti

" Java syntax
"
" Don't highlight variables
highlight link JavaIdentifier NONE

" Linter config
let g:ale_enabled = 0 " Disabled linting by default
let g:ale_lint_on_text_changed = 'never' "Lint on save only
" let g:airline#extensions#ale#enabled = 1

" File explorer configuration
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

" Custom bindings
" use jk to exit insert mode
imap jk <ESC>
" Leader + n to open file explorer
map <Leader>n :Vexplore<CR>
"Resize current buffer
" Space + L increases vertical size by 5
map <Leader>L :vertical res +5<CR>
" Space + H decreases vertical size by 5
map <Leader>H :vertical res -5<CR>
" Space + J increases horizontal size by 5
map <Leader>J :res +5<CR>
" Space + K decreases horizontal size by 5
map <Leader>K :res -5<CR>
" Space + w to save
map <Leader>w :w<CR>
" Exit insert mode in terminal
tnoremap <ESC> <C-\><C-n>

" Statusline
let g:airline_theme='base16' "Airline theme
let g:airline_section_z='%p%%'
let g:airline_powerline_fonts = 1

" Completion framework
set shortmess+=c " Dont show full messages

" Goyo
let g:goyo_width = 120
let g:goyo_margin_top = 3
let g:goyo_margin_bottom = 3

" Django settings
autocmd Filetype python set sw=4
autocmd Filetype python set ts=4
autocmd Filetype python set sts=4

" Snippet settings
"let g:UltiSnipsExpandTrigger = "<C-j>"
"let g:UltiSnipsJumpForwardTrigger = "<C-j>"
"let g:UltiSnipsJumpBackwardTrigger = "<C-p>"
"let g:UltiSnipsListSnippets = "<C-k>"

" Dart
let g:dart_corelib_highlight=v:true
let g:dart_style_guide= 2

" Tags
nnoremap <Leader>t g<C-]>
map <Leader>t g<C-]>

" Fuzzy finding
map <C-p> :FZF<CR>

" Blank characters
set listchars=tab:\|\ ,space:_
set expandtab
