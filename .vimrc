set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filteype plugin indent on


set incsearch
set ignorecase
set smartcase
set scrolloff=3
set wildmode=longest,list
set completeopt=menu,preview
set autoindent
ab teh the
ab tihs this
ab dfe def
" ab \<\<\>\> <<
" ab <lt><lt>>> <lt><lt>
inoremap {<CR> {<CR><CR>}<Up><Esc>0
" inoremap { {<Space><Space>}<Left><left>
" inoremap ( (<Space><Space>)<Left><left>
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap " ""<left>
inoremap < <<Space><Space>><left><left>
" inoremap <<>> <BS><BS>
" inoremap << <BS><BS>
" inoremap <lt><lt>>> <Del><Del><Space>
" inoremap << <<<Del><Del><Space>
" inoremap << <<<Del><Space>
inoremap << <<<Space>
inoremap [ []<left>
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

noremap <M-LeftMouse> <4-LeftMouse>
inoremap <M-LeftMouse> <4-LeftMouse>
onoremap <M-LeftMouse> <C-C><4-LeftMouse>
noremap <M-LeftDrag> <LeftDrag>
inoremap <M-LeftDrag> <LeftDrag>
onoremap <M-LeftDrag> <C-C><LeftDrag>

"call pathogen#infect()
execute pathogen#infect()
syntax on
filetype plugin indent on

" for rainbow_parentheses:
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" for vim-indent-guides:
" let g:indent_guids_auto_colors = 0

" for vim-colors-solarized-ours:
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" for undotree-vim:
" let g:loaded_undotree = 0

" for vim-mundo
" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo

" for vim-easy-align:
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" for vim-signify (for version control systems):
" g:signify_vcs_list

" " for YouCompleteMe:
" let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" for jedi autocompleter:
let g:jedi#completions_command = "<C-N>"
let g:jedi#auto_initialization = 1

" for rainbow:
let g:rainbow_active = 1
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['red', 'magenta', 'darkgreen', 'green', 'lightgreen', 'cyan','brown'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\}

" for CursorLineCurrentWindow:
" set cursorline

" for plugin searchtasks:


" autocmd VimEnter ~/Documents/Work/my_packing/python_packing/old_packing.py UndotreeShow
" autocmd VimEnter ~/Documents/Work/my_packing/python_packing/old_packing.py vsplit setup.py
" autocmd VimEnter ~/Documents/Work/my_packing/python_packing/old_packing.py split compile_packing.sh
" " autocmd VimEnter ~/Documents/Work/my_packing/python_packing/old_packing.py <C-w><Left>
" autocmd VimEnter ~/Documents/Work/my_packing/python_packing/old_packing.py split packing.c
" autocmd VimEnter ~/Documents/Work/my_packing/python_packing/old_packing.py tabe ~/clion.sh


" This stuff is for opening up stuff in my_packing, to make sure it's set up nicely
autocmd VimEnter ~/Documents/Work/my_packing/c++_packing/Container.cpp UndotreeShow
autocmd VimEnter ~/Documents/Work/my_packing/c++_packing/Container.cpp vsplit Container.h
autocmd VimEnter ~/Documents/Work/my_packing/c++_packing/Container.cpp split Particle.h
autocmd VimEnter ~/Documents/Work/my_packing/c++_packing/Container.cpp tabe Position.cpp
autocmd VimEnter ~/Documents/Work/my_packing/c++_packing/Container.cpp vsplit Position.h
autocmd VimEnter ~/Documents/Work/my_packing/c++_packing/Container.cpp UndotreeShow

" let g:rehash256 = 1
" let g:molokai_original = 1
"colorscheme hemisu
"colorscheme zenburn
"colorscheme gruvbox
"colorscheme codeschool
" colorscheme developer

" colorscheme earendel
" colorscheme elisex
" colorscheme colorsbox-greenish
" colorscheme colorsbox-stblue
" colorscheme colorsbox-stbright
" colorscheme donbass " one of my favorites
" colorscheme navajo
" colorscheme hybrid
" colorscheme molokai
