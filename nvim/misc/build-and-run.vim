autocmd FileType c nnoremap <leader>rr :execute "!cc" bufname("%") "-o /tmp/".bufname("%") "&& /tmp/".bufname("%")<CR>
