set number
set relativenumber

call plug#begin('~/.vim/plugged')

" Color-schemes
 Plug 'joshdick/onedark.vim'
 Plug 'leafgarland/typescript-vim'
 Plug 'tasn/vim-tsx'
 Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
 Plug 'scrooloose/nerdtree'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 let g:coc_global_extensions = [  'coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-css']

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
	Plug 'vimlab/split-term.vim'

  Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
	  \ 'branch': 'release/1.x',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
	
  call plug#end()


  let mapleader=" "
  let g:airline_theme='simple'


	set termguicolors  " Activa true colors en la terminal
	colorscheme onedark  " Activa tema onedark

  syntax enable

  let g:lightline = { 'colorscheme': 'plastic'}

  "Nerdtree
   nmap <leader>nt :NERDTreeFind<CR>

  "Prettier
	 nmap <leader>p :Prettier<CR>

  "FZF
	 nmap <leader>f :FZF<CR>

  "Prettier
  let g:prettier#autoformat = 0
  set tabstop=2
  let g:prettier#config#print_width = 150
	let g:prettier#config#parser = 'babylon'
	let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
	let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
	let g:airline_powerline_fonts = 1
	set noshowmode
	set nobackup
	set nowritebackup
	set noswapfile 
	set backupdir=~/.vim/backup,/tmp
	set hidden

	augroup JsonToJsonc
    autocmd! FileType json set filetype=jsonc
augroup END
