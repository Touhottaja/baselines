set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

syntax on

set nu

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

au FileType gitcommit setlocal tw=72

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

