set nu
"colorscheme evening
syn on
"set nocompatible
filetype on
"""""""""""""""""""""""""""""""""""""""""""""""""""
" general setup
""""""""""""""""""""""""""""""""""""""""""""""""""""
" restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif 

filetype on

set incsearch
"set mouse=a


""""""""""""""""""""""""""""""""""""""""""""""""""""
" vi UI
"""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler " Always show current positions along the bottom
"set mouse=a " use mouse everywhere


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscsope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


        if has("cscope")
                set csprg=/usr/bin/cscope
                set csto=0
                set cst
                set nocsverb
                " add any database in current directory
                if filereadable("cscope.out")
                    cs add cscope.out  
                " else add database pointed to by environment
                elseif $CSCOPE_DB != ""
                    cs add $CSCOPE_DB
                endif
                set csverb
        endif

	set nocp
	filetype plugin on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 if !has("gui_running")

set t_Co=8

set t_Sf=^[[3%p1%dm

set t_Sb=^[[4%p1%dm

endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fo=tcrqn " See Help (complex)
set ai " autoindent
set si " smartindent 
set cindent " do c-style indenting
set tabstop=4 " tab spacing (settings below are just to unify it)
set softtabstop=4 " unify
set shiftwidth=4 " unify 
"set expandtab
set noexpandtab " real tabs please!
set nowrap " do not wrap lines  
set smarttab " use tabs at the start of a line, spaces elsewhere
    	
    		
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist

map <F4> :TlistToggle<CR> 
 "map <F5> :call Search_Word()<CR> 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tags=./tags,../tags,../../tags,./../tags,./*/tags,./../../../tags
set cscopequickfix=s-,c-,d-,i-,t-,e-
"cs add ~/malei/dataProcess/nginx/cscope.out ~/malei/dataProcess/nginx

"fuck
"set tags=../../../tags
"cs add /home/lei/malei/ape/egg2/cscope.out /home/lei/malei/ape/egg2/ 
"cs add /home/lei/malei/ape/egg2/src/cscope.out /home/lei/malei/ape/egg2/src 

"memecached
"set tags=tags
"cs add /home/lei/malei/dataProcess/nosql/memcache/memcached-1.4.7/cscope.out /home/lei/malei/dataProcess/nosql/memcache/memcached-1.4.7/  

"redis
"set tags=../tags
"cs add /home/lei/malei/dataProcess/nosql/redis/redis-2.2.8/cscope.out ~/malei/dataProcess/nosql/redis/redis-2.2.8/ 

"ext2
"set tags=./tags
"cs add /home/lei/malei/ext2/ext2/cscope.out /home/lei/malei/ext2/ext2/

"clamav 0.93
"set tags=../tags
"cs add /home/lei/malei/virus/clamav-0.93/cscope.out  /home/lei/malei/virus/clamav-0.93/ 


"berkeleyDB
"set tags=../tags
"cs add /home/lei/malei/dataProcess/berkeleyDB/btree/cscope.out /home/lei/malei/dataProcess/berkeleyDB/btree/  
"cs add /home/lei/malei/dataProcess/berkeleyDB/btree/cscope.out /home/lei/malei/dataProcess/bekeleyDB/btree/    
"mpool
"set tags=./tags
"cs add /home/lei/malei/dataProcess/berkeleyDB/btree/mpool/cscope.out /home/lei/malei/dataProcess/berkeleyDB/btree/mpool/  
"log
"set tags=./tags
"cs add /home/lei/malei/dataProcess/log/log4cplus/log4cplus-0.9.5/cscope.out /home/lei/malei/dataProcess/log/log4cplus/log4cplus-0.9.5/

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>


nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

let g:miniBufExplMapCTabSwitchBufs = 1

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1

nnoremap <silent> <F12> :A<CR>

nnoremap <silent> <F3> :Grep<CR>

filetype plugin indent on

"set completeopt=longest,menu

"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1

"set fencs=utf-8,gbk

"set lines=10 columns=80
"set guifont=Scan\ 14
"set guifont=Sans\14
"set guifont=*
"set guifont=courier_new:h10
"set guifont=Courier\ 10\ Pitch\ 13
"set guifont=Courier\ 10\ Pitch\ 18
set guifont=Courier\ 10\ Pitch\ 12
"
"set go=
"set guioptions-=m
"set guioptions-=T

"set ft=c ts=4 sw=4 et fdm=marker
nnoremap <silent> <F8> :tabp<CR>


syntax on

colorscheme evening
