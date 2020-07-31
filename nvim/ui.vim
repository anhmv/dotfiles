" Enable true color support
set termguicolors

" Editor theme
" set background=dark

try
  let g:gruvbox_contrast_dark='dark'
  colorscheme gruvbox
catch
  colorscheme OceanicNext
endtry

" VIM airline theme
" let g:airline_theme='space'

" Set preview window to appear at bottom
set splitbelow

" Don't display mode in command line (airline already shows it)
set noshowmode

" Set floating window to be slightly transparent
set winbl=10

" coc.nvim color changes
hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type

" Call method on window enter
augroup WindowManagement
  autocmd!
  autocmd WinEnter * call Handle_Win_Enter()
augroup END

" Change highlight group of preview window when open
function! Handle_Win_Enter()
  if &previewwindow
    setlocal winhighlight=Normal:MarkdownError
  endif
endfunction

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
