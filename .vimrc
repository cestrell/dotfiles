colorscheme onedark
inoremap <C-v> <F10><C-r>+<F10>
syntax on				" Enable syntax highlighting
vnoremap <C-c> "+y
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set autoindent			" Enable auto indentation
set backspace=indent,eol,start	" Make backspace behave 
set clipboard+=unnamedplus
set cursorline			" Highlight current line
set hlsearch			" Highlight matches
set ignorecase			" Case insensitive search
set incsearch			" Search as characters are entered
set infercase
set mouse=a				" Enable mouse in all modes
set nobackup noswapfile
set nowrap				" Don't wrap text
set number				" Show line numbers
set pastetoggle=<F10>
set ruler				" Always show info along bottom
set showcmd				" Show command in bottom bar 
set showmatch
set smartcase
set softtabstop=4
set tabstop=4 shiftwidth=4 noexpandtab
set undofile			" Maintain undo history between sessions
set undodir=~/.vim/undo
set visualbell noerrorbells
" lazy file name tab completion
set wildmode=longest,list,full		
set wildmenu			" Visual autocomplete for command menu
set wildignorecase

" ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

set wildmenu
