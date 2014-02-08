filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" OS
let os = substitute(system('uname'), "\n", "", "")

" Include the hot stuff
runtime config/bundles.vim
runtime config/settings.vim
runtime config/plugins.vim
runtime config/functions.vim
runtime config/commands.vim
runtime config/autocmd.vim
runtime config/mappings.vim

" GUI stuff
if has('gui_running')
  runtime config/gui.vim
endif

" Load local vimrc if any
if filereadable(fnamemodify('~/.vimrc.local', ':p'))
  source ~/.vimrc.local
endif

filetype plugin indent on