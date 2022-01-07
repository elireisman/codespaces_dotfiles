set term=xterm-256color
syntax enable
filetype plugin indent on

set nocompatible
set ttyfast
set encoding=utf-8 nobomb
set scrolloff=5

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set backspace=indent,eol,start
set number
set ruler
set syntax=on

" tab navigation shortcuts for `vim -p ...`
set tabpagemax=200
nmap <C-j> :tabp<CR>
imap <C-j> <ESC>:w<CR>:tabp<CR>
nmap <C-k> :tabn<CR>
imap <C-k> <ESC>:w<CR>:tabn<CR>
nmap <C-q> :sessionoptions=buffers<CR>:mksession<CR>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-m> :tabnew<CR><C-p>

" statusline customizations
set laststatus=2
" set statusline=%-48F\ (line\ %l\ of\ %L)

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=magenta
  elseif a:mode == 'r'
    hi statusline guibg=blue
  else
    hi statusline guibg=red
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=green

" default the statusline to green when entering Vim
hi statusline guibg=green

let g:rustfmt_autosave = 1
