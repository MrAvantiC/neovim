" Enable deoplete
let g:deoplete#enable_at_startup = 1
" Start autocompletion right away
let g:deoplete#auto_complete_start_length=1
let g:deoplete#auto_complete_delay=50


" Set the sources deoplete pulls suggestions from
" init variable
let g:deoplete#sources = {}
" all files
let g:deoplete#sources._ = ['buffer', 'ultisnips']
" filetype-specifics
let g:deoplete#sources.javascript = ['buffer', 'ultisnips', 'ternjs']
let g:deoplete#sources.stylus = ['buffer']


" Unset the preview-option to avoid opening the documentation in new split
set completeopt-=preview


" Set filetype-specific omnifunctions with this syntax if you want to support
" multiple omnifunctions
"let g:deoplete#omni#functions = {}
"let g:deoplete#omni#functions.javascript = [
  "\ 'tern#Complete'
  "\]


" Close the preview window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
