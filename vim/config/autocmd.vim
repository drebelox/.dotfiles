
" AutoCommands " {{{
au BufRead,BufNewFile {*.go}                                          setl ft=go tabstop=2 softtabstop=2 noexpandtab smarttab
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}     setl ft=javascript tabstop=2 softtabstop=2 noexpandtab smarttab
au BufRead,BufNewFile {*.json,*.js}                                   setl ft=ruby tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         setl ft=markdown
au! BufReadPost       {COMMIT_EDITMSG,*/COMMIT_EDITMSG}               setl ft=gitcommit noml list| norm 1G

" open help in vertical split
au BufWinEnter *.txt if &ft == 'help' | wincmd H | endif

" Python
au FileType python set sw=4 sts=4 et

" Hard code tabs in Makefiles
au FileType make setlocal noexpandtab

" CakePHP -> PHP
au BufEnter *.ctp set filetype=php

" JSON -> JavaScript
au BufEnter *.json set filetype=javascript

" TSS -> CSS
au BufEnter *.tss set filetype=css

" Spell checking
au FileType cucumber,markdown,gitcommit set spell

" " }}}
