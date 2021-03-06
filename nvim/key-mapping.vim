" === Nerdtree shorcuts === "
"  <leader>n - Toggle NERDTree on/off
"  <leader>f - Opens current file location in NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" === coc.nvim === "
nnoremap <silent> <leader>dd <Plug>(coc-definition)
nnoremap <silent> <leader>dr <Plug>(coc-references)
nnoremap <silent> <leader>dj <Plug>(coc-implementation)

" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nnoremap <leader>y :StripWhitespace<CR>

" === Search shorcuts === "
"   <leader>h - Find and replace
"   <leader>/ - Claer highlighted search terms while preserving history
nnoremap <leader>h :%s///<left><left>
nnoremap <silent> <leader>/ :nohlsearch<CR>

" === Easy-motion shortcuts ==="
"   <leader>w - Easy-motion highlights first word letters bi-directionally
nnoremap <leader>w <Plug>(easymotion-bd-w)

" Allows you to save files you opened without write permissions via sudo
cnoremap w!! w !sudo tee %

" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
vnoremap <leader>p "_dP

nnoremap ; :Buffers<CR>
nnoremap <leader>t :Files<CR>
nnoremap <leader>g :Rg<CR>

" stupid console.log
autocmd FileType vue,javascript vnoremap cll yoconsole.log('[LOG] => ');<Esc>==f> pf'a, <Esc>p
autocmd FileType vue,javascript nnoremap cll yiwoconsole.log('[LOG] => ');<Esc>==f> pf'a, <Esc>p

nnoremap <Leader>a :call OpenFloatTerm()<CR>
nnoremap <Leader>at :call OpenFloatTerm("tig")<CR>
nnoremap <Leader>ar :call OpenFloatTerm("newsboat")<CR>
nnoremap <Leader>av :call OpenFloatTerm("vtop")<CR>

" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

" Edit my Vim config
nnoremap <leader>ev :e $MYVIMRC<CR>

" Reload the config
nnoremap <leader>rv :source $MYVIMRC<CR>

" Move the current line down a line
nnoremap - ddp
" Move the current line up a line // doesn't work with the last row
nnoremap _ ddkP

" Close all other buffers except the current one
nnoremap <leader>bd :<c-u>up <bar> %bd! <bar> e#<cr>

" OPERATOR-PENDING MAPPINGS
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap an( :<c-u>normal! f(va(<cr>
onoremap il( :<c-u>normal! F(vi(<cr>
onoremap al( :<c-u>normal! F(va(<cr>

onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap an{ :<c-u>normal! f{va{<cr>
onoremap il{ :<c-u>normal! F{vi{<cr>
onoremap al{ :<c-u>normal! F{va{<cr>

onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap an[ :<c-u>normal! f[va[<cr>
onoremap il[ :<c-u>normal! F[vi[<cr>
onoremap al[ :<c-u>normal! F[va[<cr>
