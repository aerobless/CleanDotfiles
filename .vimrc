"Mouse support:
set mouse=a
set ttymouse=xterm2

"Backspace settings:
set backspace=indent,eol,start " backspace over everything in insert mode

"Enable syntax highlighting by default
syntax on

"Read .md and .md.txt files as .markdown
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.md.txt set filetype=markdown

"Automatic Spell Checking
setlocal spell spelllang=en,de