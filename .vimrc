
set nocompatible 
filetype off 
filetype plugin indent on
syntax on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
set fileencoding=utf-8
set encoding=utf-8
set expandtab
set background=dark
set backspace=indent,eol,start
set mouse=a
set autoread
set tags=tags
set guifont=Monospace\ 16
set guioptions-=m "menu bar
set guioptions-=T "tool bar
set number
set ignorecase
set nowrap

" Equivalent of 'ls' command but only filename are showed instead of long
" path
function! ListBuffers()

  " Result of 'ls' command into 'ls_output' internal register
  redir   => ls_output
  silent exec 'ls'
  redir END

  " Remove long path to short path for each file
  let list = substitute(ls_output, '"\(\f*/\)*\(\f*\)"', '\=submatch(2)', "g")

  " Loop on each buffer and extract only two elements : buffer index
  " and filename 
  " Then store result in hash containing (key = filename, value = buffer index)
  let i = 0
  let listArray = split(list, "\n")
  let listHash  = {}
  while (i < len(listArray))
    let bufIndex  = substitute(listArray[i], '\(\d\+\)\s.*', '\=submatch(1)', "g")
    let bufFile   = substitute(listArray[i], '.*\s\+\(\S\+\)\s\+line\s\+\d\+', '\=submatch(1)', "g")
    let listHash[bufFile] = bufIndex
    let i = i + 1
  endwhile

  " Join each element of hash with key sorted
  let list = ""
  for i in sort(keys(listHash))
    let list = list.listHash[i]."\t".i."\n"
  endfor

  " Print result
  echo list

endfunction

" Chmod+x + header automatically
function! Hashbang(portable, permission, RemExt)
  let shells = {
          \     'sh': "bash",
          \     'js': "node",
          \     'pl': "perl",
          \    'php': "php",
          \     'py': "python",
          \    'tcl': "tclsh",
          \     'tk': "wish"
          \    }
 
  let extension = expand("%:e")

  if has_key(shells,extension)
    let fileshell = shells[extension]

    if a:portable
        let line =  "#! /usr/bin/env " . fileshell
    else
        let line = "#! " . system("which " . fileshell)
    endif

    0put = line

    if a:permission
        :autocmd BufWritePost * :autocmd VimLeave * :!chmod u+x %
    endif


    if a:RemExt
        :autocmd BufWritePost * :autocmd VimLeave * :!mv % "%:p:r"
    endif

  endif
 
endfunction
 

"################################
"###### Map 
"###############################

"## Variable for map command
let hlstate=0

"## Map command
"Type ':help key-notation' to know how to map keyboard

mapclear

noremap  <F3>       :if (hlstate == 0)    \| set hls        \| else \| set hls!       \| endif \| let hlstate=1-hlstate<CR>

"################################
"###### Command
"###############################

command! E e %:h
command! V vsp %:h
command! S sp %:h
command! DeleteM %s/^M//g

:autocmd BufNewFile *.* :call Hashbang(0,1,0)

map <Enter> o<ESC>
map <S-Enter> O<ESC>
