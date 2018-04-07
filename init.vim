call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'rhysd/vim-clang-format'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rakr/vim-one'
Plug 'vim-scripts/a.vim'
Plug 'SirVer/ultisnips'
Plug 'easymotion/vim-easymotion'
Plug 'w0rp/ale'
Plug 'rhysd/vim-clang-format'
Plug 'mklabs/split-term.vim'
Plug 'bling/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tibabit/vim-templates'

call plug#end()

colorscheme one
set background=light
let g:airline_theme='one'

noremap <C-p> :NERDTreeToggle <CR>

let g:ycm_complete_in_strings = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion =  1
let g:ycm_confirm_extra_conf = 0

set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

set splitbelow

let g:ycm_global_ycm_extra_conf = '/home/zaqwer/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'

let g:clang_format#command = 'clang-format-3.8'
let g:clang_format#style_options = {
            \ "BreakBeforeBraces" : "Attach",
            \ "UseTab" : "Never",
            \ "IndentWidth" : 4,
            \ "ColumnLimit" : 100,
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \}

inoremap <C-j> <Esc>:ClangFormat<CR>a
nnoremap <C-j> <Esc>:ClangFormat<CR>

noremap <C-b> :4Term ./build.sh <CR>
noremap <C-t> :20Term <CR>

" header / source
nnoremap <F4> :A<CR>
inoremap <F4> <ESC>:A<CR>a

" file under cursor
nnoremap <F2> :IH<CR>
inoremap <F2> <ESC>:IH<CR>

noremap <C-q> :qa<CR>
map <C-S> :write<CR>
