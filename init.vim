" Only on windows
if has('win32') || has('win64')
	set path+=C:\\msys64\\usr\\bin
	set path+=C:\\msys64\\mingw64\\bin
	set shell=cmd.exe\ C:\\msys64\\msys2_shell.cmd\ -defterm\ -no-start\ -mingw64
endif

call plug#begin('~/AppData/Local/nvim/plugged')
" A file explorer side bar
Plug 'preservim/nerdtree'
" Informative status bar
Plug 'itchyny/lightline.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()


set number
set tabstop=2
set shiftwidth=2
set nobackup
set nowritebackup
set expandtab

" Searching
set ignorecase
set smartcase


" quit if NERDTree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

