augroup templates
  au!
  let templates_prefix = globpath(b:dot_path, "templates/") . 'tmpl.'

  autocmd BufNewFile *.* silent! execute '0r' templates_prefix.expand("<afile>:e")
  autocmd BufNewFile * normal Gddgg
augroup END
