"""""""""""""
""" VIMRC""""
"""""""""""""

colorscheme onedark				" Set colorscheme
syntax on						" Enable syntax highlighting

set nocompatible				" Required (?)
set clipboard=unnamedplus		" Use system clipboard
set autoindent					" Enable auto indentation
set backspace=indent,eol,start	" Make backspace behave
set cursorline					" Highlight current line
set hlsearch					" Highlight matches in search
set ignorecase					" Case insensitive search
set incsearch					" Search as characters are entered
set infercase                   " Infer case during completion
set nobackup noswapfile			" Don't create backup or swap files
set nowrap						" Don't wrap text
set number						" Show line numbers
"set relativenumber				" Show distance from current line
set ruler						" Always show info along bottom
set showcmd						" Show command in bottom bar
set showmatch					" Highlight matching braces
set smartcase					" Override ignorecase on mixed-case patterns
set softtabstop=4 tabstop=4 	" Tab styling
set splitbelow splitright		" More natural splitting
set shiftwidth=4 noexpandtab	" More tab styling
set undofile					" Maintain undo history between sessions
set undodir=~/.vim/undo			" Set undo file directory
set visualbell noerrorbells		" No annoying dings
set t_vb=						" Disable visual bell
set wildmode=longest,list,full	" Lazy file name tab completion
set wildmenu					" Visual autocomplete for command menu
set wildignorecase				" Case insensitive command menu


" Netrw settings
let g:netrw_liststyle = 3
let g:netrw_browse_split = 1
let g:netrw_winsize = 25

" Ignore files vim doesnt use
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
