
 "colorscheme base16-default-light
 "colorscheme medic_chalk



 set nu
 set noswapfile
 set mouse=a
 set title
 set showmatch
 set ignorecase
 set ruler
 set t_Co=256
 set termguicolors
 let base16colorspace=256
 set smarttab
 set nopaste
 set encoding=utf8
 set termencoding=utf8
 " set cursorline
 set scrolloff=4
 set smartindent
 set tabstop=2
 set expandtab
 set shiftwidth=2
 set softtabstop=2
 set wrap linebreak
 set hlsearch
 set autoindent
 set hidden " switch buffers in vim without saving to a currently modified file

" Finding Files:
"   search down into subfolders
"   provides tab completion for all file related tasks
"   ** means that search through every sub-directory
    set path+=**
    "   display all matching files when we tab complete
    set wildmenu

" Tag Jumping:
"   Create the `tags` file
    command! MakeTags !ctags -R .
    "   Use ^] to jump to tag under cursor
    "   Use g^] to ambiguous tags
    "   Use ^t to jump back up the tag stacks


" Last Edit Position:
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif


 syntax on



 " Ctrl-h to move to previous buffer <bN>
 nmap <C-h> :bN<enter>
 " Ctrl-l to move to next buffer <bn>
 nmap <C-l> :bn<enter>

 " `j` and `k` is now `gj` and `gk`
 nnoremap j gj
 nnoremap gj j
 nnoremap k gk
 nnoremap gk k
 nnoremap $ g$
 nnoremap g$ $
 nnoremap 0 g0
 nnoremap g0 0

 " command Clip '<,'>w! ~/vim.tmp
 " command Paste r ~/vim.tmp
 
 " for rainbow parentheses
 "au VimEnter * RainbowParenthesesToggle
 "au Syntax * RainbowParenthesesLoadRound
 "au Syntax * RainbowParenthesesLoadSquare
 "au Syntax * RainbowParenthesesLoadBraces

" Shift-hjkl moves cursor faster
nnoremap <S-h> 10h
nnoremap <S-j> 8j
nnoremap <S-k> 8k
nnoremap <S-l> 10l
