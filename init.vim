
""" ----------------------------------------------- Remaps
let mapleader=" "


""" ----------------------------------------------- Main Configurations
filetype plugin indent on

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set nowrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set title
set mouse=a

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

set exrc
set cmdheight=2

""" Filetype-Specific Configurations

" HTML, XML, Jinja
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>


""" ---------------------------------------------- Auto install Vim Plug

"if empty(glob('~/.config/nvim/autoload/plug.vim'))
"	silent sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"endif


call plug#begin()

Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'scrooloose/nerdtree'

" Aesthetics - Colorschemes
Plug 'gruvbox-community/gruvbox'

" Aesthetics - Others
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-journal'

call plug#end()



""" ----------------------------------------------- Coloring

colorscheme gruvbox
highlight Normal guibg=none


""" ---------------------------------------------- Vim Airline Configuration
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


""" ---------------------------------------------- Telescope

" n=normal mode, nore= no recursive execution, 
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search=vim.fn.input("Grep For > ")})<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


""" ---------------------------------------------- NERD Three
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
