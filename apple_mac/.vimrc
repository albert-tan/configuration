set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle (required!)
Bundle 'gmarik/vundle'

" My bundles:
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-endwise'
Bundle 'kchmck/vim-coffee-script'

"set virtualedit=onemore
set completeopt=longest,menuone
set autoindent
set number

set hlsearch

au FileType ruby,eruby,javascript,coffee,yml setl shiftwidth=2 softtabstop=2 expandtab
au FileType ruby,eruby,javascript,coffee,yml setl ofu=rubycomplete#Complete
au FileType ruby,eruby,javascript,coffee,yml let g:rubycomplete_buffer_loading=1 
au FileType ruby,eruby,javascript,coffee,yml let g:rubycomplete_classes_in_global=1
au FileType ruby,eruby,javascript,coffee,yml let g:rubycomplete_rails=1

au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType css setl ofu=csscomplete#CompleteCSS

au BufRead,BufNewFile *.json.erb set filetype=eruby

au BufRead,BufNewFile *.ui set filetype=eruby
au BufRead,BufNewFile *.ui hi sopUi cterm=bold ctermfg=lightblue
au BufRead,BufNewFile *.ui syn match sopUi /ui/

au VimEnter * NERDTree
au BufEnter * NERDTreeMirror
au VimEnter * wincmd w

filetype plugin indent on

syntax enable

" Omni completion
set omnifunc=syntaxcomplete#Complete

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

