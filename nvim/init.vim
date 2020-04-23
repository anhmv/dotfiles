scriptencoding utf-8

let dot_path = $HOME . "/.dotfiles/nvim/"

let scripts = split(globpath(dot_path, "**/*.vim"), '\n')
let self = dot_path . "init.vim"
let plugins = dot_path . "plugins.vim"

exec ":source " . plugins

for config in scripts
  " do not load itself and the plug file
  if self != config && self != plugins
    " echom ":source " . config
    exec ":source " . config
  endif
endfor
