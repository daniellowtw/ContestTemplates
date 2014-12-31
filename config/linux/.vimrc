set nocompatible

filetype off                  " required

" set the runtime path to include Vundle and initialize
if has("win32")
  set rtp+=~/vimfiles/bundle/Vundle.vim
    let path='~/vimfiles/bundle'
      call vundle#begin(path)
      else
        set rtp+=~/.vim/bundle/Vundle.vim
	  call vundle#begin()
	  endif

	  """""""""""""""""""
	  "" VUNDLE PLUGINS "
	  """""""""""""""""""

	  " let Vundle manage Vundle, required
	  Plugin 'gmarik/Vundle.vim'

	  " Keep Plugin commands between vundle#begin/end.

	  " Workflow
	  Plugin 'tpope/vim-fugitive'
	  Plugin 'scrooloose/nerdtree'
	  Plugin 'jistr/vim-nerdtree-tabs'
	  Plugin 'kien/ctrlp.vim'
	  Plugin 'netrw.vim'
	  Plugin 'milkypostman/vim-togglelist'
	  Plugin 'majutsushi/tagbar'            " working with jsctags
	  Plugin 'sjl/gundo.vim'
	  Plugin 'tpope/vim-dispatch'
	  Plugin 'Shougo/vimproc.vim'
	  Plugin 'Shougo/vimshell.vim'

	  " Editing
	  Plugin 'tpope/vim-surround'
	  Plugin 'ervandew/supertab'
	  Plugin 'terryma/vim-multiple-cursors'
	  Plugin 'scrooloose/nerdcommenter'
	  Plugin 'tpope/vim-repeat'
	  Plugin 'godlygeek/tabular'
	  Plugin 'terryma/vim-expand-region'
	  Plugin 'kana/vim-textobj-user'        " helps expand-region
	  Plugin 'kana/vim-textobj-line'        " helps expand-region
	  Plugin 'kana/vim-textobj-indent'
	  Plugin 'Mark'
	  Plugin 'Raimondi/delimitMate'         " .vim was modified to handle smartindent
	  Plugin 'MarcWeber/vim-addon-mw-utils' " for snipmate
	  Plugin 'tomtom/tlib_vim'              " for snipmate
	  Plugin 'garbas/vim-snipmate'
	  Plugin 'honza/vim-snippets'
	  Plugin 'osyo-manga/vim-over'
	  Plugin 'AndrewRadev/splitjoin.vim'

	  " Syntax checking
	  Plugin 'scrooloose/syntastic'         " jshint needed
	  Plugin 'marijnh/tern_for_vim'         " npm tern needed

	  " Language syntax
	  Plugin 'pangloss/vim-javascript'

	  " Colorschemes
	  Plugin 'xolox/vim-misc'               " needed by colorscheme-switcher
	  Plugin 'xolox/vim-colorscheme-switcher'
	  Plugin 'altercation/vim-colors-solarized'
	  Plugin 'tomasr/molokai'
	  Plugin 'sjl/badwolf'
	  Plugin 'Pychimp/vim-luna'
	  Plugin 'jonathanfilip/vim-lucius'
	  Plugin 'nanotech/jellybeans.vim'
	  Plugin 'w0ng/vim-hybrid'
	  Plugin 'Zenburn'

	  " For plugins I don't want in console vim
	  if has('gui_running')
	  Plugin 'bling/vim-airline'
	  endif

	  " All of your Plugins must be added before the following line
	  call vundle#end()            " required
	  filetype plugin indent on    " required
	  " To ignore plugin indent changes, instead use:
	  "filetype plugin on

	  source $VIMRUNTIME/vimrc_example.vim
	  source $VIMRUNTIME/mswin.vim
	  behave mswin

	  """""""""""""""""""
	  "" PLUGINS       ""
	  """""""""""""""""""

	  " CtrlP
	  let g:ctrlp_map = '<leader>p'
	  let g:ctrlp_cmd = 'CtrlP'
	  let g:ctrlp_working_path_mode = 'ra'

	  " Solarized
	  let g:solarized_italic = 0
	  if exists('g:loaded_togglebg')
	    call togglebg#map("")     " Needed to initialise togglebg command
	    endif

	    " Airline
	    set laststatus=2
	    set encoding=utf-8
	    let g:airline_powerline_fonts = 1
	    if !exists('g:airline_symbols')
	      let g:airline_symbols = {}
	      endif
	      let g:airline_symbols.space = "\ua0"
	      let g:airline#extensions#whitespace#enabled = 0

	      " NERDTree
	      let g:NERDTreeChDirMode=1

	      " NERDTree tabs
	      let g:nerdtree_tabs_open_on_gui_startup=0

	      " Syntastic
	      let g:syntastic_auto_loc_list = 1
	      let g:syntastic_always_populate_loc_list = 1

	      " Mark
	      let g:mwDefaultHighlightingPalette = 'extended'

	      " NERDCommenter
	      let g:NERDSpaceDelims = 1

	      " colorscheme-switcher
	      let g:colorscheme_switcher_exclude = ['blue', 'darkblue', 'default', 'delek', 'desert', 'elflord', 'evening', 'industry', 'koehler', 'luna-term', 'morning', 'murphy', 'pablo', 'peachpuff'
	            \, 'ron', 'shine', 'slate', 'torte', 'zellner']

		    " togglelist
		    let g:toggle_list_no_mappings=1

		    " SuperTab
		    let g:SuperTabCrMapping = 0      " Compatibility with delimitMate

		    " delimitMate
		    let g:delimitMate_expand_cr = 1
		    let g:delimitMate_expand_space = 1
		    let g:delimitMate_jump_expansion = 1

		    " over.vim
		    nnoremap <leader>o :OverCommandLine<CR>

		    """""""""""""""""""
		    "" MY CONFIGS    ""
		    """""""""""""""""""

		    " leader
		    let mapleader = "\<Space>"

		    " Fix temp directories for Windows 7
		    if has("win32")
		      set directory^=~/tmp,$TMP,$TEMP
		      endif

		      """""""""""""""""""
		      "" UI CONFIG     ""
		      """""""""""""""""""

		      " syntax highlighting
		      syntax enable

		      " split windows to the right
		      set splitright

		      " hide GVIM toolbars
		      set guioptions-=m
		      set guioptions-=T
		      set guioptions-=t
		      set guioptions-=r
		      set guioptions-=L
		      set guioptions-=l

		      " Initial window is maximised
		      au GUIEnter * simalt ~x

		      " GVIM font (custom font for powerline)
		      set guifont=Inconsolata_for_Powerline:h11:cANSI

		      " highlight current line
		      set cursorline

		      " visual autocomplete for command menu
		      set wildmenu

		      " Command <Tab> completion, longest common part, then all.
		      set wildmode=longest:full,full

		      " don't redraw during macros
		      set lazyredraw

		      " show line numbers
		      set number

		      " don't wrap lines
		      set nowrap

		      " Hide GUI tabline
		      set go-=e

		      " Only show tabline when there is more than 1 tab
		      set showtabline=1

		      " if a file is changed outside of vim, automatically reload it without asking
		      set autoread

		      " allow backspacing over everything
		      set backspace=2

		      " Remove error bells
		      set noerrorbells visualbell t_vb=
		      autocmd GUIEnter * set visualbell t_vb=

		      " when scrolling, keep cursor 10 lines away from screen border
		      set scrolloff=10

		      " Show tabline numbers
		      if exists("+showtabline")
		           function! MyTabLine()
			            let s = ''
				             let t = tabpagenr()
					              let i = 1
						               while i <= tabpagenr('$')
							                    let buflist = tabpagebuflist(i)
									                 let winnr = tabpagewinnr(i)
											              let s .= '%' . i . 'T'
												                   let s .= (i == t ? '%1*' : '%2*')
														                let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
																             let s .= ' '
																	                  let s .= i . ' '
																			               let file = bufname(buflist[winnr - 1])
																				                    let file = fnamemodify(file, ':p:t')
																						                 if file == ''
																								                  let file = '[No Name]'
																										               endif
																											                    let tmp = matchstr(file, '.tmp$')
																													                 if !empty(tmp)
																															                let file = '[Scratch]'
																																	             endif
																																		                  let s .= file
																																				               let s .= ' '
																																					                    let i = i + 1
																																							             endwhile
																																								              let s .= '%T%#TabLineFill#%='
																																									               let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
																																										                return s
																																												     endfunction
																																												          set tabline=%!MyTabLine()
																																													  endif

																																													  """""""""""""""""""
																																													  "" COLORSCHEME   ""
																																													  """""""""""""""""""

																																													  if has('gui_running')

																																													    set background=dark

																																													      colorscheme solarized
																																													        " colorscheme molokai
																																														  " colorscheme badwolf
																																														    " colorscheme luna
																																														      " colorscheme lucius
																																														        " colorscheme jellybeans
																																															  " colorscheme hybrid
																																															    " colorscheme zenburn

																																															    endif

																																															    """""""""""""""""""
																																															    "" WHITESPACE    ""
																																															    """""""""""""""""""

																																															    " set indentation
																																															    set tabstop=2
																																															    set expandtab
																																															    set shiftwidth=2
																																															    set softtabstop=2
																																															    set smartindent

																																															    " Show trailing whitespace
																																															    "set list listchars=tab:»·,trail:·

																																															    " function for cleaning trailing whitespace
																																															    nnoremap <silent> <F10> :call RemoveWhiteSpace()<CR>

																																															    " auto-clean trailing whitespace on write
																																															    autocmd BufWrite * :call RemoveWhiteSpace()

																																															    function! RemoveWhiteSpace()
																																															      let save_view = winsaveview()
																																															        execute '%s/\s\+$//e'
																																																  call winrestview(save_view)
																																																  endfunction

																																																  """""""""""""""""""
																																																  "" SEARCH        ""
																																																  """""""""""""""""""

																																																  " I don't like incsearch
																																																  set noincsearch

																																																  " highlight matches
																																																  set hlsearch

																																																  " turn off search highlight until next search
																																																  nnoremap <leader>h :noh<CR>

																																																  " highlight last inserted text
																																																  nnoremap gV `[v`]

																																																  " rehighlights the last pasted text
																																																  nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'

																																																  """""""""""""""""""
																																																  "" MOVEMENT      ""
																																																  """""""""""""""""""

																																																  " hjkl training
																																																  " map <up> <nop>
																																																  " map <down> <nop>
																																																  " map <left> <nop>
																																																  " map <right> <nop>
																																																  " imap <up> <nop>
																																																  " imap <down> <nop>
																																																  " imap <left> <nop>
																																																  " imap <right> <nop>

																																																  " faster hjkl movement
																																																  " nnoremap H 5h
																																																  " nnoremap J 5j
																																																  " nnoremap K 5k
																																																  " nnoremap L 5l
																																																  " xnoremap H 5h
																																																  " xnoremap J 5j
																																																  " xnoremap K 5k
																																																  " xnoremap L 5l

																																																  " move between windows
																																																  noremap <C-j> <C-W>j
																																																  noremap <C-k> <C-W>k
																																																  noremap <C-h> <C-W>h
																																																  noremap <C-l> <C-W>l

																																																  " Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
																																																  nnoremap <M-j> mz:m+<cr>`z
																																																  nnoremap <M-k> mz:m-2<cr>`z
																																																  vnoremap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
																																																  vnoremap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

																																																  " visual shifting (does not exit Visual mode)
																																																  vnoremap < <gv
																																																  vnoremap > >gv

																																																  " Allow arrow keys in Visual Block
																																																  set keymodel-=stopsel

																																																  """""""""""""""""""
																																																  "" MAPPINGS      ""
																																																  """""""""""""""""""

																																																  " Shortcut for fugitive
																																																  ca Gs Gstatus

																																																  " Shortcut for NERDTree
																																																  ca NT NERDTree

																																																  " Shortcut for NERDTree-tabs
																																																  noremap <silent> ¬ :NERDTreeTabsToggle<CR>

																																																  " Shortcut to toggle background
																																																  noremap <silent> <F5> :ToggleBG<CR>

																																																  " fugitive shortcuts
																																																  nnoremap <leader>gs :Gstatus<CR>
																																																  nnoremap <leader>gd :Gdiff<CR>
																																																  nnoremap <leader>gb :Gblame<CR>
																																																  nnoremap <leader>gp :Git push<CR>

																																																  " easy vimrc handling
																																																  nnoremap <leader>C :e $MYVIMRC<cr>
																																																  nnoremap <leader>S :source $MYVIMRC<cr>

																																																  " toggle quickfix list
																																																  nnoremap <script> <silent> <leader>lo :call ToggleLocationList()<CR>
																																																  nnoremap <script> <silent> <leader>co :call ToggleQuickfixList()<CR>

																																																  " Omnicomplete
																																																  inoremap <C-Space> <C-x><C-o>

																																																  " move cursor to middle of line
																																																  nnoremap gm :call cursor(0, strlen(getline('.'))/2)<CR>

																																																  " Gundo
																																																  nnoremap <leader>u :GundoToggle<CR>

																																																  " Tagbar
																																																  nnoremap <F9> :TagbarToggle<CR>

																																																  " snipMate
																																																  imap <C-J> <Plug>snipMateNextOrTrigger
																																																  smap <C-J> <Plug>snipMateNextOrTrigger

																																																  " Ctrl-Y copies character above line
																																																  inoremap <expr> <c-y> strpart(getline(line('.')-1), virtcol('.')-1, 1)

																																																  " delimitMate overrides
																																																  inoremap <C-G>} }
																																																  inoremap <C-G>) )
																																																  inoremap <C-G>] ]
																																																  inoremap <C-G>' '
																																																  inoremap <C-G>" "

																																																  """""""""""""""""""
																																																  "" BACKUPS       ""
																																																  """""""""""""""""""

																																																  " better backup, swap and undos storage
																																																  set noswapfile
																																																  set directory=~/vimfiles/dirs/swap
																																																  set backup
																																																  set backupdir=~/vimfiles/dirs/backups
																																																  set undofile
																																																  set undodir=~/vimfiles/dirs/undos
																																																  set viminfo+=n~/vimfiles/dirs/viminfo

																																																  " create needed directories if they don't exist
																																																  if !isdirectory(&backupdir)
																																																      call mkdir(&backupdir, "p")
																																																      endif
																																																      if !isdirectory(&directory)
																																																          call mkdir(&directory, "p")
																																																	  endif
																																																	  if !isdirectory(&undodir)
																																																	      call mkdir(&undodir, "p")
																																																	      endif

																																																	      """""""""""""""""""
																																																	      "" FUNCTIONS     ""
																																																	      """""""""""""""""""

																																																	      " Create scratch buffers
																																																	      function! ScratchEdit(cmd, options)
																																																	        let a:name = tempname()
																																																		  exe a:cmd a:name
																																																		    setl buftype=nofile bufhidden=wipe nobuflisted
																																																		      if !empty(a:options) | exe 'setl' a:options | endif
																																																		      endfunction

																																																		      command! -bar -nargs=* Sedit call ScratchEdit('edit', <q-args>)
																																																		      command! -bar -nargs=* Ssplit call ScratchEdit('split', <q-args>)
																																																		      command! -bar -nargs=* Svsplit call ScratchEdit('vsplit', <q-args>)
																																																		      command! -bar -nargs=* Stabedit call ScratchEdit('tabe', <q-args>)

																																																		      nnoremap <leader>sc :call ScratchEdit('tabe', '')<CR>
																																																		      nnoremap <leader>sj :call ScratchEdit('tabe', 'ft=javascript')<CR>

																																																		      """""""""""""""""""
																																																		      "" CONSOLE VIM   ""
																																																		      """""""""""""""""""

																																																		      if !has('gui_running')

																																																		        " remove cursorline (red line in console vim)
																																																			  set nocursorline

																																																			  endif

																																																			  """""""""""""""""""
																																																			  "" END MY CONFIG ""
																																																			  """""""""""""""""""

																																																			  " Windows 7 fix for MyDiff()
																																																			  if has("win32")
																																																			    set diffexpr=!MyDiff()
																																																			      function! MyDiff()
																																																			          let opt = '-a --binary '
																																																				      if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
																																																				          if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
																																																					      let arg1 = v:fname_in
																																																					          if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
																																																						      let arg2 = v:fname_new
																																																						          if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
																																																							      let arg3 = v:fname_out
																																																							          if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
																																																								      if $VIMRUNTIME =~ ' '
																																																								            if &sh =~ '\<cmd'
																																																									            if empty(&shellxquote)
																																																										              let l:shxq_sav = ''
																																																											                set shellxquote&
																																																													        endif
																																																														        let cmd = '"' . $VIMRUNTIME . '\diff"'
																																																															      else
																																																															              let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
																																																																            endif
																																																																	        else
																																																																		      let cmd = $VIMRUNTIME . '\diff'
																																																																		          endif
																																																																			      silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
																																																																			          if exists('l:shxq_sav')
																																																																				        let &shellxquote=l:shxq_sav
																																																																					    endif
																																																																					      endfunction
																																																																					      endif

																																																																					      " sources
																																																																					      " http://amix.dk/vim/vimrc.html
																																																																					      " https://github.com/saaguero/dotvim/blob/master/.vimrc
																																																																					      " http://dougblack.io/words/a-good-vimrc.html

																																																																					      :cd ~

