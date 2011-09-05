
let g:AutoPairsMapCR=0
"augroup reautopair 
  "au!
  "autocmd FileType ruby
    "\ let g:AutoPairsMapCR=0
    "\ call AutoPairsInit()
"augroup END

call pathogen#runtime_append_all_bundles()
syntax on
filetype plugin indent on

" ruby-friendly defaults
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set smartindent " ??
set expandtab

set incsearch

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

set vb                  "visual bell
set number							" Show line numbering
set ruler               " line numbers and column the cursor is on
set showcmd             " Display what command is waiting for an operator

"set shortmess+=a        " Use [+] [RO] [w] for modified, read-only, modified

" Ctrl-N twice toggle line numbers
nnoremap <silent> <C-N><C-N> :set invnumber<CR>

" work more logically with wrapped lines
"noremap j gj
"noremap k gk

set showmatch						" Briefly jump to the previous matching paren
"set matchtime=2         " For .2 seconds

" home-row escape shortcut
:inoremap ;; <ESC>

"leader key (, in mac vim)
"let mapleader = "\\"
"

" make some handier mappings to the default mappings for 
" NERD_commenter (ctrl-backslash)
:map <C-\> ,c<SPACE>j
:nmap <C-\> ,c<SPACE>j

" and for NERDTree (ctrl-p)
:nmap <C-p> :NERDTree<cr>
:imap <C-p> <ESC>:NERDTree<cr>

" and for rails.vim :Rtabfind (ctrl-t)
:nmap <C-t> :Rtabfind 

"command-t plugin options
let g:CommandTAcceptSelectionMap='<C-t>'
let g:CommandTAcceptSelectionTabMap='<CR>'


"ack-vim (ctrl-g defaults to show information of set ruler)
let g:ackprg="/Users/hanlon/ack.sh -H --nocolor --nogroup --column" 
:nmap <C-g> :tabnew<CR>:Ack  
:imap <C-g> <ESC>:tabnew<CR>:Ack  
:nmap <C-h> :tabnew<CR>:AckFromSearch<CR>
:imap <C-h> <ESC>:tabnew<CR>:AckFromSearch<CR>

" completefunc
" inoremap <C-SPACE> <C-x><C-u> 


"Updates a session, BUT ONLY IF IT ALREADY EXISTS 
"function! UpdateSession()
 "let b:sessionfile = getcwd() . "/Session.vim" 
 "if (filewritable(b:sessionfile))
   "exe "mksession! " . b:filename
 "endif
"endfunction

"do this automatically on close
"au VimLeave * :call UpdateSession()

:nmap <C-j> jzz
:nmap <C-k> kzz

set wildmode=longest,list,full
set wildmenu

