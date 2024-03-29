set nocompatible

syntax enable
filetype plugin indent on

set re=0

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
set wildignore+=**/node_modules/**

"
" Display all matching files when we tab complete
set wildmenu

"set rtp+=/opt/homebrew/opt/fzf

let g:netrw_banner=0
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" " - :edit a folder to open a file browser
" " - <CR>/v/t to open in an h-split/v-split/tab
" " - check |netrw-browse-maps| for more mappings
