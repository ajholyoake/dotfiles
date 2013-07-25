execute pathogen#infect()
"highlight comment ctermfg=darkgreen
"highlight comment guifg=darkgreen

function ConfigureForTex()
endfunction

autocmd FileType *.tex call ConfigureForTex()
set spell
setlocal spell spelllang=en_gb

syntax enable
set background=light
colorscheme solarized
call togglebg#map("<F5>")

set ts=2
set shiftwidth=2
set expandtab
set viminfo='1000,f0
set hlsearch
set mouse=a
set bs=2
set number
set guioptions+=a
nmap <Enter> o<Esc>

let &titlestring = "vim(" . expand("%:t") . ")"

if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif

if &term == "screen" || &term == "xterm"
  set title
endif 

set updatetime=500

source $VIMRUNTIME/macros/matchit.vim

"colorscheme wombat
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %{WordCount()}\ words
set laststatus=2 

"save folds
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

filetype plugin on
filetype indent on
"No Bells!
if has("gui_running")
	au GUIEnter * set t_vb=
endif

set vb t_vb= 
map <Down> gj
map <Up> gk

imap <Down> <Esc>gja
imap <Up> <Esc>gka

",v brings up my .vimrc
",V reloads it -- making all changes active (have to save first)

map ,v :sp ~/.vimrc<CR><C-W>_
map <silent> ,V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*


"
" automatically give executable permissions if file begins with #! and contains
" '/bin/' in the path
"
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod a+x <afile> | endif | endif

  set modeline

  
