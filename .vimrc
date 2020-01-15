call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'jistr/vim-nerdtree-tabs'

" Colorschemes
Plug 'morhetz/gruvbox'
" Grep
" apt-get install silversearcher-ag
Plug 'rking/ag.vim'
" Lazyload
"Plug 'kien/ctrlp.vim'
" Easy motion
Plug 'easymotion/vim-easymotion'

"Python syntax
"Plug 'vim-python/python-syntax'

" Initialize plugin system
call plug#end()

syntax on
colorscheme gruvbox 
set background=dark
set number
set hlsearch
set incsearch
set showcmd
set nobackup
set noswapfile
set tabpagemax=50
set paste

"настройки

let python_highlight_all = 1

"molokai
"let g:molokai_original = 1
"let g:rehash256 = 1

"python-syntax
"let g:python_highlight_all = 1


"маппинг

" C(trl)+d - дублирование текущей строки
imap <C-d> <esc>yypi

"маппинг плагинов
map <C-n> :NERDTreeToggle<CR>
map <C-r> :NERDTreeFind<CR>
nnoremap <Up>    <C-w>+
nnoremap <Down>  <C-w>-
nnoremap <Left>  <C-w><
nnoremap <Right> <C-w>>
map <C-l> :bn<CR>
map <C-h> :bp<CR>
"let g:ctrlp_map = '<c-p>
"let g:ctrlp_cmd = 'CtrlP'
let mapleader = ','

"маппинг easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Полезные команды
"
" Поиск
"
" 1) найти слово foo в файлах js от корня
" vim foo **/*.js | copen
"
" 2) найти слово foo в файлах js от необходимой директории
" vim foo /path/to/project/**/* | copen
"
" 3) если нужно открыть app/views/foobar.php для редактирования
" e **/foo<tab>

