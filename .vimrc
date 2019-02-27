"プラグイン
call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tomtom/tcomment_vim'
Plug 'osyo-manga/vim-anzu'
call plug#end()
"emmetの設定
let g:user_emmet_leader_key = '<C-A>'
let g:user_emmet_settings = {
\  'variables' : {
\    'lang' : "ja"
\  },
\  'html' : {
\    'indentation' : '  ',
\    'snippets' : {
\      'html:5': "<!DOCTYPE html>\n"
\        ."<html lang=\"${lang}\">\n"
\        ."<head>\n"
\        ."\t<meta charset=\"${charset}\">\n"
\        ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
\        ."\t<title></title>\n"
\        ."\t<link rel=\"stylesheet\" href=\"\">\n"
\        ."</head>\n"
\        ."<body>\n\t${child}|\n</body>\n"
\        ."</html>",
\    }
\  }
\}
"検索位置表示の設定 mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
" statusline
set statusline=%{anzu#search_status()}u

"　その他のカスタム設定
if has('vim_starting')
    let &t_SI .= "\e[6 q" " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_EI .= "\e[2 q" " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_SR .= "\e[4 q" " 置換モード時に非点滅の下線タイプのカーソル
endif
set encoding=utf-8
scriptencoding utf-8
colorscheme molokai
syntax on
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=2 " smartindentで増減する幅
set number " 行番号を表示
set cursorline " 現在の行を強調表示
set showmatch " 括弧入力時の対応する括弧を表示
set tabstop=2 "タブ幅
set expandtab "タブの代わりにスペースを利用
inoremap <silent> jj <ESC> 
"括弧補完
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
"引用符の補完（引用を閉じようとしているのに補完されてしまうケースの対処）
function! QuotesCompletion(char)
    let counter = 0
    let line = getline(".")
    for i in range(strlen(line))
        if line[i] == a:char
            let counter += 1
        endif
    endfor
    if counter % 2 == 0
        return a:char.a:char."\<Left>"
    else
        return a:char
    end
endfunction
inoremap <silent> <expr> " QuotesCompletion("\"")
inoremap <silent> <expr> ' QuotesCompletion("\'")
nnoremap <silent><C-e> :NERDTreeToggle<CR>
