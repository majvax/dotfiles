set encoding=utf-8
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set completeopt-=preview
set number
set smarttab
set nobackup
set nowritebackup
set termguicolors


" Use powershell
" https://github.com/akinsho/toggleterm.nvim/wiki/Tips-and-Tricks#using-toggleterm-with-powershell
let &shell = 'pwsh'
let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
let &shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait'
let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
set shellquote= shellxquote=




" Plugins
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'andweeb/presence.nvim'
Plug 'vim-airline/vim-airline', {'on': 'AirlineToggle'} 
Plug 'ryanoasis/vim-devicons' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rcarriga/nvim-notify'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'mhinz/vim-startify'

call plug#end()
lua require("toggleterm").setup()

" Keybind
nnoremap <C-b> :NERDTreeToggle<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
nnoremap <silent><C-t> :ToggleTerm<Cr>

" Theme
:colorscheme pink-moon
let g:dashboard_default_executive ='fzf'


" Provider
let g:python3_host_prog="C:\\Python310\\python.exe"
let g:ruby_host_prog="C:\\tools\\ruby31\\bin\\ruby.exe"
