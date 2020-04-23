" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" === Editing Plugins === "
" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Tmuxline
Plug 'edkolev/tmuxline.vim'

" auto-close plugin
Plug 'rstacruz/vim-closer'

" Tmux/Neovim movement integration
Plug 'christoomey/vim-tmux-navigator'

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" === UI === "
" File explorer
Plug 'scrooloose/nerdtree'

" Colorscheme
Plug 'mhartington/oceanic-next'
"
" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" GLSL Shader language
Plug 'tikhomirov/vim-glsl'

" Vue
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'anhmv/vim-float-window'

" Elixir
Plug 'elixir-editors/vim-elixir'

" Vader
Plug 'junegunn/vader.vim'

call plug#end()

if has("autocmd")
  augroup templates
    " autocmd BufNewFile *.vue 0r ~/.dotfiles/nvim/templates/component.vue
  augroup END
endif
