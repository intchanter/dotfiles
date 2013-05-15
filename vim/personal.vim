" Show newlines and tabs
set list
set listchars=eol:↲,tab:>-

" Allow backspacing spaces as if they were tabs
set softtabstop=4

" Highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Highlight matching parens without being confusing
hi MatchParen cterm=bold ctermbg=none ctermfg=none

" Use the right colors
set bg=dark
