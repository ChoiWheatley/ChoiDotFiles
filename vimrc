" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'tpope/vim-fugitive'
 Plugin 'git://git.wincent.com/command-t.git'
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'scrooloose/syntastic'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'ctrlpvim/ctrlp.vim'
 Plugin 'chriskempson/base16-vim'
 Plugin 'kien/rainbow_parentheses.vim'
 Plugin 'ParamagicDev/vim-medic_chalk'
 Plugin 'tpope/vim-obsession'
 Plugin 'tpope/vim-commentary'
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
 call vundle#end()            " required
 filetype plugin indent on    " required
 "airline tab line
 let g:airline#extensions#tabline#enabled = 1
 let g:airline_section_z = ''
 let g:airline_section_y = ''
 let g:ctrlp_match_window = 'results:100' " overcome limit imposed by max height
 let g:ctrlp_show_hidden = 1

" syntastic
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*
 "let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
 let g:syntastic_c_check_header = 1
 let g:syntastic_c_include_dirs = ["/home/choe/workspace/choi-workspace/util"]
 let g:syntastic_c_compiler_options = "-D_XOPEN_SOURCE=500"
 let g:syntastic_stl_format = "[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]"




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
 set cursorline
 set scrolloff=4
 set smartindent
 set tabstop=4
 set expandtab
 set shiftwidth=4
 set softtabstop=4
 set wrap linebreak
 set hlsearch
 set autoindent

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

" using netrw as tree-view
let g:netrw_liststyle= 3


 syntax on


 "colorscheme base16-default-light
 colorscheme medic_chalk


 " Ctrl-h to move to previous buffer <bN>
 nmap <C-h> :bN<enter>
 " Ctrl-l to move to next buffer <bn>
 nmap <C-l> :bn<enter>
 "hhellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohelloello

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
