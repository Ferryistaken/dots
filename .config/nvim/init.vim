"
"
"        ███▄    █ ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄  
"        ██ ▀█   █▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█  
"       ▓██  ▀█ ██▒▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄ 
"       ▓██▒  ▐▌██▒ ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"   ██▓ ▒██░   ▓██░  ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"   ▒▓▒ ░ ▒░   ▒ ▒   ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"   ░▒  ░ ░░   ░ ▒░  ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒   
"   ░      ░   ░ ░     ░░   ▒ ░░      ░     ░░   ░ ░        
"    ░           ░      ░   ░         ░      ░     ░ ░      
"    ░                 ░                           ░        
"
"
" my Neovim configuration

" Plugins using vim-plug
call plug#begin('~/.vim/plugged')

" Misc autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Toml autocomplete
Plug 'cespare/vim-toml'

" css
"this highlights colors in the correct color
Plug 'skammer/vim-css-color'

" this is to help with jekyll dev
Plug 'parkr/vim-jekyll'

" Start Screen
Plug 'mhinz/vim-startify'
"Plug 'hardcoreplayers/dashboard-nvim'

Plug 'mbbill/undotree', {'branch': 'master'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive'


Plug 'jremmen/vim-ripgrep'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'liuchengxu/vim-which-key'


" THEMES
Plug 'dylanaraps/wal.vim'

Plug 'mhartington/oceanic-next'
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sainnhe/gruvbox-material'
Plug 'jacoborus/tender.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'franbach/miramare'
Plug 'doums/darcula'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'chriskempson/base16-vim'
Plug 'drewtempelmeyer/palenight.vim'

" AESTHETIC TWEAKS
Plug 'luochen1990/rainbow'

call plug#end()

" Only way to use number
set number
set relativenumber

" enable search highlighting
set hlsearch

" ignore case when searching
set ignorecase

" search partial matches
set incsearch

set encoding=utf-8

" how much space i keep from edge of file when scrolling
set scrolloff=20

syntax enable

" tabs good spaces bad
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4


set undodir=~/.vim/undodir
set undofile

set noswapfile

set smartcase
set wrap

set ruler
set wildmenu

set visualbell

set mouse=a

set title

set nofoldenable

set history=1000

" terminal inside of nvim
set shell=zsh

" Render white space
set list
set listchars=trail:•,tab:ᐅ-

let mapleader = " "

" Custom keybinds """""""""""""""""""""""""""'

" Vim which key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Better window switching
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Custom switching
map <leader>vsp :vsp<cr>
map <leader>sp :sp<cr>

" Open file browser
map <leader>b :NERDTreeToggle<cr>

" Ripgrep
nnoremap <leader>ps :Rg<SPACE>

" Toggle undotree panel
nnoremap <leader>u :UndotreeToggle<cr>

" nerdtree in new tab
let NERDTreeMapOpenInTab='<leader><ENTER>'

" tab switching
map <leader>t :tabs<cr>

" Git fugitive remaps
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" FZF
nmap <leader>ff :Files $HOME/<CR>
nmap <leader>,, :Files ../<CR>
nmap <leader>fg :GFiles<CR>

" Show open buffers
nmap <silent> <C-o> :Buffers<CR>

" Remove highlighting after a search
nmap <leader>// :noh<CR>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Resize windows
nmap <leader>K :resize +5<cr>
nmap <leader>J :resize -5<cr>

nmap <leader>H :vertical resize +5<cr>
nmap <leader>L :vertical resize -5<cr>



" terminal inside of nvim

" Exit from terminal buffer (Neovim) more easily (remaps Esc key in
" terminal)
tnoremap <C-[> <C-\><C-n>


""""""""""" Running / Compiling """"""""""""

" Rust
nnoremap <leader>rr :!cargo run<cr>

" Jekyll
nnoremap <leader>js :JSpost!<cr>
nnoremap <leader>jt :JTpost!<cr>

" this is to make images centered in jekyll
nnoremap <leader>jci i{:refdef: style="text-align: center;"}<cr>[![image description](/assets/posts/)](/assets/posts/) <br><cr>*Description*<cr>{: refdef}<esc>



" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Start Screen
let g:dashboard_custom_shortcut={
      \ 'last_session'       : 'SPC s l',
      \ 'find_history'       : 'SPC f h',
      \ 'find_file'          : 'SPC f f',
      \ 'change_colorscheme' : 'SPC t c',
      \ 'find_word'          : 'SPC f a',
      \ 'book_marks'         : 'SPC f b',
      \ }

" Theme
set termguicolors
set background=dark
set guifont=DroidSansMono\ Nerd\ Font\ 9
" Rainbow brackets
"let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" OCEANIC NEXT """""""""""""""""""""""""""""""""""""""""""""""
"colorscheme OceanicNext
"let g:airline_theme='oceanicnext'

" MONOKAI """"""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme monokai

" DRACULA """"""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme dracula


" GRUVBOX """"""""""""""""""""""""""""""""""""""""""""""""""""
"let g:gruvbox_material_background = 'medium'
"let g:airline_theme = 'gruvbox_material'
"colorscheme gruvbox-material

" TENDER """"""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme tender
"let g:airline_theme = 'tender'

" XCODE """""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme xcodedark

" ONEHALF """"""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme onehalfdark
"let g:airline_theme = 'onehalfdark'

" MIRAMARE """"""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme miramare
"let g:airline_theme = 'miramare'

" DARCULA """""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme darcula

" WAL     """""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme wal


" ONEDARK """""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme onedark
"let g:airline_theme = 'onedark'

" PALENIGHT """""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme palenight
let g:airline_theme = "palenight"
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1

" BASE16  """""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme base16-circus

" Close vim if the only open buffer is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
