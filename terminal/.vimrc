source /usr/local/lib/python3.9/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

set nocompatible
set number
set backspace=indent,eol,start
syntax on
set cursorline
set laststatus=2
set statusline=2
set showtabline=2
set noshowmode
set tabstop=4
set shiftwidth=4
set expandtab
set pumheight=12
colorscheme monokai
highlight normal ctermbg=none
let $PYTHON3_DLL="/usr/local/Frameworks/Python.framework/Versions/3.9/Python"
let g:syntastic_python_python_exec = '$HOME/.pyenv/shims/python3'
let g:syntastic_mode_map = {
            \ 'mode': 'active',
            \ 'passive_filetypes': ['python', 'ruby']
            \ }
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
let g:rsenseUseOmniFunc = 1
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_dictionary_patterns = 1
let g:lightline = {
    \ 'colorscheme' : 'jellybeans',
    \ 'component':{
    \   'readonly' : '%{&readonly?"⭤":""}',
    \ }
    \ }
let g:Powerline_symbols = 'fancy'
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/neosnippet.vim'
    NeoBundle 'Shougo/neocomplete'
    NeoBundle 'Shougo/vim-vcs'
    NeoBundle 'Shougo/neocomplcache'
    NeoBundle 'Shougo/neosnippet-snippets'
    NeoBundle 'ujihisa/unite-colorscheme'
    NeoBundle 'itchyny/lightline.vim'
    NeoBundle 'kien/ctrlp.vim'
    NeoBundle 'tpope/vim-fugitive'
    " solarized
    NeoBundle 'altercation/vim-colors-solarized'
    " mustang
    NeoBundle 'croaker/mustang-vim'
    " jellybeans
    NeoBundle 'nanotech/jellybeans.vim'
    " molokai
    NeoBundle 'tomasr/molokai'
    " monokai
    NeoBundle 'sickill/vim-monokai'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'davidhalter/jedi-vim'
    NeoBundle 'kevinw/pyflakes-vim'
    NeoBundle 'scrooloose/syntastic'
    NeoBundle 'bronson/vim-trailing-whitespace'
    NeoBundle 'powerline/fonts'
    NeoBundle 'powerline/powerline',{ 'rtp' : 'powerline/bindings/vim' }
    NeoBundle 'Yggdroot/indentLine'
    NeoBundle 'pep8'
    NeoBundle 'pyflakes'
    NeoBundle 'octol/vim-cpp-enhanced-highlight'
    "
    NeoBundleLazy 'marcus/rsense', { 'autoload': {'filetypes': 'ruby',},}
    "NeoBundle 'Flake8-vim'
    NeoBundleLazy 'Shougo/vimshell', {
                \   'depends' : 'Shougo/vimproc',
                \   'autoload' : {
                \       'commands' : [{ 'name' : 'VimShell', 'complete' :
                \           'customlist,vimshell#complete'},
                \           'VimShellExecute', 'VimShellInteractive',
                \           'VimShellTerminal', 'VimShellPop'],
                \       'mappings' : ['<Plug>(vimshell_switch)']
                \ }}
    " vimshell {{{
    nmap <silent> vs :<C-u>VimShell<CR>
    nmap <silent> vp :<C-u>VimShellPop<CR>
    " }}}
    call neobundle#end()
endif
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?"
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
filetype plugin indent on
