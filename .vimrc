    " properly set to work with the Vim-related packages available in Debian.   debian.vim  
      
    " Uncomment the next line to make Vim more Vi-compatible  
    " NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous  
    " options, so any other options should be set AFTER setting 'compatible'.  
    set nocompatible  
      
    " Vim5 and later versions support syntax highlighting. Uncommenting the  
    " following enables syntax highlighting by default.  
    if has("syntax")  
    syntax on " 语法高亮  
    endif  
    colorscheme desert " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下  
      
    " detect file type  
    filetype on  
    filetype plugin on  
      
    " If using a dark background within the editing area and syntax highlighting  
    " turn on this option as well  
    set background=dark  
      
    " Uncomment the following to have Vim jump to the last position when  
    " reopening a file  
    if has("autocmd")  
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif  
    "have Vim load indentation rules and plugins according to the detected filetype  
    filetype plugin indent on  
    endif  
      
    " The following are commented out as they cause vim to behave a lot  
    " differently from regular Vi. They are highly recommended though.  
      
    set ignorecase " 搜索模式里忽略大小写  
    "set smartcase " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。  
    set autowrite " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。  
    set autoindent " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置  
    "set smartindent " 智能对齐方式  
    set tabstop=4 " 设置制表符(tab键)的宽度  
    set softtabstop=4 " 设置软制表符的宽度  
    set shiftwidth=4 " (自动) 缩进使用的4个空格  
    set cindent " 使用 C/C++ 语言的自动缩进方式  
    set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式  
    "set backspace=2 " 设置退格键可用  
    set showmatch " 设置匹配模式，显示匹配的括号  
    set linebreak " 整词换行  
    set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去  
    "set hidden " Hide buffers when they are abandoned  
    set mouse=a " Enable mouse usage (all modes) "使用鼠标  
    set number " Enable line number "显示行号  
    "set previewwindow " 标识预览窗口  
    set history=50 " set command history to 50 "历史记录50条  
      
    "--状态行设置--  
    set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行  
    set ruler " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。  
      
    "--命令行设置--  
    set showcmd " 命令行显示输入的命令  
    set showmode " 命令行显示vim当前模式  
      
    "--find setting--  
    set incsearch " 输入字符串就显示匹配点  
    set hlsearch

	"set cursorline        "突出显示当前行"
	"set cursorcolumn        "突出显示当前列"


	hi LineNr ctermfg = darkgrey  
	"设置行号的前景色
	hi Number ctermfg = darkred
	"hi Statement ctermfg =red
	"hi LineNr ctermbg=grey
	"设置行号的背景色
	set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
	set enc=utf8
	set fencs=utf8,gbk,gb2312,gb18030

	"bundle插件
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	"Plugin 'Lokaltog/vim-powerline'
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'scrooloose/nerdtree'
	Plugin 'Yggdroot/indentLine'
	Plugin 'jiangmiao/auto-pairs'
	Plugin 'tell-k/vim-autopep8'
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'kien/rainbow_parentheses.vim'
	Plugin 'ctrlpvim/ctrlp.vim'
	Plugin 'dyng/ctrlsf.vim'
	Plugin 'majutsushi/tagbar'

	call vundle#end()
	filetype plugin indent on


	let g:ycm_server_python_interpreter='/usr/bin/python'
	let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
	let g:ycm_confirm_extra_conf=0
	set completeopt=longest,menu
	"python解释器路径"
	"let g:ycm_path_to_python_interpreter='/usr/local/bin/python'
	""是否开启语义补全"
	let g:ycm_seed_identifiers_with_syntax=1
	"是否在注释中也开启补全"
	let g:ycm_complete_in_comments=1
	let g:ycm_collect_identifiers_from_comments_and_strings = 0
	""开始补全的字符数"
	let g:ycm_min_num_of_chars_for_completion=2
	"补全后自动关机预览窗口"
	let g:ycm_autoclose_preview_window_after_completion=1
	"" 禁止缓存匹配项,每次都重新生成匹配项"
	let g:ycm_cache_omnifunc=0
	"字符串中也开启补全"
	let g:ycm_complete_in_strings = 1
	""离开插入模式后自动关闭预览窗口"
	autocmd InsertLeave * if pumvisible() == 0|pclose|endif
	"回车即选中当前项"
	"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '\<CR>'     
	""上下左右键行为"
	inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
	inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
	inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
	inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'

	"NERDTree
	"F2开启和关闭树"
	map <F2> :NERDTreeToggle<CR>
	let NERDTreeChDirMode=1
	""显示书签"
	let NERDTreeShowBookmarks=1
	"设置忽略文件类型"
	let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
	""窗口大小"
	let NERDTreeWinSize=25
				

	"缩进指示线"
	let g:indentLine_char='┆'
	let g:indentLine_enabled = 1
	let g:indentLine_color_term = 239 
	"映射到ctrl+i键 \
	map <C-i> :IndentLinesToggle<CR>
	"
	""autopep8设置"
	let g:autopep8_disable_show_diff=1
	""

				
	"let mapleader=','
	map <F4> <leader>ci <CR>
			
	
	let g:airline_solarized_bg='dark'
	" 是否启用顶部tabline\
	"let g:airline#extensions#tabline#enabled = 1
	" " 顶部tabline显示方式\
	"let g:airline#extensions#tabline#left_sep = ' '
	"let g:airline#extensions#tabline#left_alt_sep = '|'



let g:rbpt_colorpairs = [ ['brown', 'RoyalBlue3'], ['Darkblue', 'SeaGreen3'], ['darkgray', 'DarkOrchid3'], ['darkgreen', 'firebrick3'],['darkcyan', 'RoyalBlue3'],['darkred', 'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['brown', 'firebrick3'],['gray', 'RoyalBlue3'],['black',       'SeaGreen3'],['darkred', 'DarkOrchid3'],['red', 'firebrick3'],['darkcyan', 'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['Darkblue',  'firebrick3'],['darkgreen', 'RoyalBlue3'] ]



	let g:rbpt_max = 16
	au VimEnter * RainbowParenthesesToggle
	au Syntax * RainbowParenthesesLoadRound
	au Syntax * RainbowParenthesesLoadSquare
	au Syntax * RainbowParenthesesLoadBraces

	map <F3> :TagbarToggle<CR>
	let g:tagbar_width = 25
	map f <Plug>CtrlSFPrompt
	map F <Plug>CtrlSFQuickfixPrompt
