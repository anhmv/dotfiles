scriptencoding utf-8

let b:dot_path = $HOME . "/.dotfiles/nvim/"

let b:scripts = split(globpath(b:dot_path, "**/*.vim"), '\n')
let b:self = b:dot_path . "init.vim"
let b:plugins = b:dot_path . "plugins.vim"

exec ":source " . b:plugins

for config in b:scripts
  " do not load itself and the plug file
  if b:self != config && b:self != b:plugins
    " echom ":source " . config
    exec ":source " . config
  endif
endfor
