:syntax on
:set tabstop=4
:set laststatus=2
:set shiftwidth=4
:set number
:set cursorline
:set autoindent


"--NeoBundle--"

if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'nanotech/jellybeans.vim'

NeoBundle 'tomasr/molokai'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'


call neobundle#end()

filetype plugin indent on

NeoBundleCheck

"--NeoBundle--"
