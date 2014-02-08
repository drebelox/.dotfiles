
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Programming
Bundle 'jnwhiteh/vim-golang'
Bundle 'Blackrush/vim-gocode'

" Syntax highlight
Bundle 'scrooloose/syntastic'
Bundle 'gmarik/vim-markdown'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-surround'

" Gui
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Git integration
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'

nnoremap <leader>W :Gwrite<CR>
nnoremap <leader>C :Gcommit -v<CR>
nnoremap <leader>S :Gstatus \| 7<CR>
inoremap <leader>W <Esc><leader>W
inoremap <leader>C <Esc><leader>C
inoremap <leader>S <Esc><leader>S

Bundle 'tpope/vim-unimpaired'
" bubble current line
nmap <M-j> ]e
nmap <M-k> [e
" bubble visual selection lines
vmap <M-j> ]egv
vmap <M-k> [egv

" (HT|X)ml tool
Bundle 'ragtag.vim'

" Utility
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'AndrewRadev/splitjoin.vim'
nmap sj :SplitjoinJoin<cr>
nmap sk :SplitjoinSplit<cr>

Bundle 'kana/vim-textobj-user'

Bundle 'gmarik/github-search.vim'
Bundle 'gmarik/ide-popup.vim'
Bundle 'gmarik/sudo-gui.vim'
Bundle 'Gundo'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'

Bundle 'ervandew/supertab'

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key='<LocalLeader>'

Bundle 'Indent-Guides'
let g:indent_guides_guide_size = 1